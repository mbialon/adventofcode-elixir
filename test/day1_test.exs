defmodule Day1Test do
  use ExUnit.Case, async: true

  test "((())) is floor 0" do
    assert Day1.floor("((()))") == 0
  end

  test "()() is floor 0" do
    assert Day1.floor("()()") == 0
  end

  test "((( is floor 3" do
    assert Day1.floor("(((") == 3
  end

  test "(()(()( is floor 3" do
    assert Day1.floor("(()(()(") == 3
  end

  test "))((((( is floor 3" do
    assert Day1.floor("))(((((") == 3
  end

  test "()) is floor -1" do
    assert Day1.floor("())") == -1
  end

  test "))( is floor -1" do
    assert Day1.floor("))(") == -1
  end

  test "))) is floor -3" do
    assert Day1.floor(")))") == -3
  end

  test ")())()) is floor -3" do
    assert Day1.floor(")())())") == -3
  end
end
