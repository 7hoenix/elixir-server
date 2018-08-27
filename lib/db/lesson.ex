defmodule Lesson do
  defstruct title: "work", frames: %{}

  def get_frames() do
    [ %{
        fen: "5k2/8/5K2/8/8/8/3R4/8 w - - - -",
        default_message: "We are going to learn the net",
        squares: %{ g4: "This square will completely restrict the enemy monarchs movement to just the back rank." }
      }, %{
        fen: "4k3/3R4/5K2/8/8/8/3R4/8 w - - - -",
        default_message: "The enemy monarch is in range to capture. We need to defend the rook.",
        squares: %{ f5: "Monarchs move one square in any direction. However they can't move into danger. So if you move here then the enemy monarch cannot capture your rook" }
      }]
  end

  def get_lesson() do
    %Lesson{ title: "work", frames: get_frames() }
  end
end
