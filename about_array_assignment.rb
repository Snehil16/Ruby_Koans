require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutArrayAssignment < Neo::Koan
  def test_non_parallel_assignment
    names = ["John", "Smith"]
    # argument not provided below to assert equal
    # assert equal should have values to assert to a variable
    # assert_equal __, names
    assert_equal ["John", "Smith"], names
  end

  def test_parallel_assignments
    first_name, last_name = ["John", "Smith"]
    # argument not provided below to assert equal
    # assert equal should have values to assert to a variable
    # assert_equal __, first_name
    # assert_equal __, last_name
    assert_equal "John", first_name
    assert_equal "Smith", last_name
  end

  def test_parallel_assignments_with_extra_values
    first_name, last_name = ["John", "Smith", "III"]
    # argument not provided below to assert equal
    # assert equal should have values to assert to a variable
    # assert_equal __, first_name
    # assert_equal __, last_name
    assert_equal "John", first_name
    assert_equal "Smith", last_name
  end

  def test_parallel_assignments_with_splat_operator
    first_name, *last_name = ["John", "Smith", "III"]
    # argument not provided below to assert equal
    # assert equal should have values to assert to a variable
    # assert_equal __, first_name
    # assert_equal __, last_name
    assert_equal "John", first_name
    assert_equal ["Smith", "III"], last_name
  end

  def test_parallel_assignments_with_too_few_values
    first_name, last_name = ["Cher"]
    # argument not provided below to assert equal
    # assert equal should have values to assert to a variable
    # assert_equal __, first_name
    # assert_equal __, last_name
    assert_equal "Cher", first_name
    assert_equal nil, last_name
  end

  def test_parallel_assignments_with_subarrays
    first_name, last_name = [["Willie", "Rae"], "Johnson"]
    # argument not provided below to assert equal
    # assert equal should have values to assert to a variable
    # assert_equal __, first_name
    # assert_equal __, last_name
    assert_equal ["Willie", "Rae"], first_name
    assert_equal "Johnson", last_name
  end

  def test_parallel_assignment_with_one_variable
    first_name, = ["John", "Smith"]
    # argument not provided below to assert equal
    # assert equal should have values to assert to a variable
    # assert_equal __, first_name
    assert_equal "John", first_name
  end

  def test_swapping_with_parallel_assignment
    first_name = "Roy"
    last_name = "Rob"
    first_name, last_name = last_name, first_name
    # argument not provided below to assert equal
    # assert equal should have values to assert to a variable
    # assert_equal __, first_name
    # assert_equal __, last_name
    assert_equal "Rob", first_name
    assert_equal "Roy", last_name
  end
end
