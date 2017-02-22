require "spec_helper"

RSpec.describe BDF::Font do
  context "render a string" do
    let(:font) { BDF::Font.from_file("fixtures/ter-u12b.bdf") }

    it "renders" do
      canvas = BDF::Renderer.render("Where is \"Foobar\"?", :font => font)

      puts canvas.map do |line|
        line.map { x == 1 ? "#" : " " }.join
      end.join("\n")
    end
  end
end
