ExUnit.start()

defmodule MyTest do
  use ExUnit.Case

  describe "Group A" do
    describe "Group B" do
      test "Test" do
        assert true
      end
    end
  end
end
