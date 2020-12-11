defmodule MyMod1 do
  defmacro define_foo do
    quote do
      def foo, do: :foo
    end
  end
end

defmodule MyMod2 do
  require MyMod1

  MyMod1.define_foo()
end

IO.inspect(MyMod2.foo())
