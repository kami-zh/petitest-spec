require "petitest/autorun"
require "petitest/spec"

class PetitestSpecTest < Petitest::Test
  extend ::Petitest::Spec

  def test_normal_test_to_be_passed
    assert do
      true
    end
  end

  describe ".describe" do
    def test_description
      assert { runner.test_group.description == ".describe" }
    end

    context "with context" do
      def test_description
        assert { runner.test_group.description == "with context" }
      end

      def test_full_description
        assert { runner.test_group.full_description == "PetitestSpecTest .describe with context" }
      end
    end
  end

  context ".context" do
    def test_description
      assert { runner.test_group.description == ".context" }
    end
  end

  describe ".it" do
    it "returns true" do
      assert { true }
    end
  end

  describe ".specify" do
    it "returns true" do
      assert { true }
    end
  end
end
