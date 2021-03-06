require 'spec_helper'

describe "invoices/edit" do
  before(:each) do
    @invoice = assign(:invoice, stub_model(Invoice,
      :references => "",
      :references => "",
      :rand => "MyString",
      :title => "MyString",
      :description => "MyText",
      :number => 1
    ))
  end

  it "renders the edit invoice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invoices_path(@invoice), :method => "post" do
      assert_select "input#invoice_references", :name => "invoice[references]"
      assert_select "input#invoice_references", :name => "invoice[references]"
      assert_select "input#invoice_rand", :name => "invoice[rand]"
      assert_select "input#invoice_title", :name => "invoice[title]"
      assert_select "textarea#invoice_description", :name => "invoice[description]"
      assert_select "input#invoice_number", :name => "invoice[number]"
    end
  end
end
