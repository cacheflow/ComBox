require "rails_helper"

  describe User do
  	before do 
  		@user = User.create(email: "me@me.com", password: "water", password_confirmation: "water")
  	end
  
  it "should be valid with a user, name, and password" do 
  	expect(@user).to be_valid
  end 

  it "should be invalid if it does not have an email" do 
  	@user.email = nil
  	expect(@user).to be_invalid 
  end 

  it "should be invalid if it does not have a password" do
  	@user.password = nil
  	expect(@user).to be_invalid
  end 

  it "should be invalid without a password confirmation" do 
  	@user.password_confirmation = nil
  	expect(@user).to be_invalid 
  end 

  it "should have its password equal to password_confirmation" do 
  	expect(@user.password).to eql(@user.password_confirmation)
  end 

  it "should have a strong password" do 
  	@user.password = "a" * 5 
  	expect(@user).to be_invalid
  end

  it "should not be valid with a duplicate user" do 
  	@user_copy = @user.dup 
  	@user_copy.save
  	expect(@user).to be_invalid
  end 

  	it "should be invalid" do 
		emails = %w[men@men,com men@dotorg men@foo. men@foo..com]
		emails.each do |invalids| 
			@user.email = invalids 
			expect(@user).to be_invalid
		end 
	end 

		it "should be valid" do 
			correct = %w[men@men.com men@men.org men@men.jp men@men.ca]
			correct.each do |correct|
			@user.email = correct 
			expect(@user).to be_valid
			end
		end



end
