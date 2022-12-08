namespace Business.Constants
{
    public static class Messages
    {
        public static readonly string? CarAdded = "Car added";
        public static readonly string CarAddConstraint = "The length of the car description must be greater than or equal to 2 and the Daily Price must be greater than 0";
        public static readonly string CouldNotAddedCar = "The car could not be added";

        public static readonly string? CarRemoved = "Car Deleted";
        public static readonly string CouldNotRemovedCar = "The car could not be deleted";

        public static readonly string? CarUpdated = "Car Updated";
        public static readonly string CouldNotUpdatedCar = "The car could not be updated";

        public static readonly string? CarsListed = "Cars Listed";
        public static readonly string? CarListed = "Car Listed";
        public static readonly string? CarsListedByColor = "Cas Listed By Color Id";
        public static readonly string? CarsListedByDailyPrice = "Cars Listed By Daily Price";
        public static readonly string? CarsListedByModelYear = "Cars Listed By Model Year";
        public static readonly string? CarListById = "Car Listed By Id";

        public static readonly string? CarDetails = "Car Details";
        public static readonly string? RentalDetails = "Rental Details";

        public static readonly string? AlreadyRented = "This car is currently rented";
        public static readonly string? RentalAdded = "Rental Added";
        public static readonly string? RentalDeleted = "Rental Deleted";
        public static readonly string? RentalUpdated = "Rental Updated";
        public static readonly string? RentalsListed = "Rentals Listed";
        public static readonly string? RentalListed = "Rental Listed";
        public static readonly string? RentalsListedByCarId = "Rentals Listed By Car Id";
        public static readonly string? RentalsListedByCustomerId = "Rentals Listed By Customer Id";

        public static readonly string? BrandAdded = "Brand Added";
        public static readonly string? BrandRemoved = "Brand Deleted";
        public static readonly string? BrandUpdated = "Brand Updated";
        public static readonly string? BrandsListed = "Brands Listed";
        public static readonly string? BrandListedById = "Brand Listed By Id";

        public static readonly string? ColorAdded = "Color Added";
        public static readonly string? ColorRemoved = "Color Removed";
        public static readonly string? ColorUpdated = "Color Updated";
        public static readonly string? ColorsListed = "Colors Listed";
        public static readonly string? ColorListed = "Color Listed";

        public static readonly string? CustomerAdded = "Customer Added";
        public static readonly string? CustomerRemoved = "Customer Deleted";
        public static readonly string? CustomerUpdated = "Customer Deleted";
        public static readonly string? CustomersListed = "Customers Listed";
        public static readonly string? CustomerListedById = "Customer Listed By Id";
        public static readonly string CustomerListedByUserId = "Customer Listed By User Id";

        public static readonly string? UserAdded = "User Added";
        public static readonly string UserRemoved = "User Removed";
        public static readonly string? UserUpdated = "User Updated";
        public static readonly string? UsersListed = "Users Listed";
        public static readonly string? CarCountOfBrandError = "A car can have a maximum of 10 brands";
        public static readonly string? CarDescriptionAlreadyExist = "Car Description already exist";
        public static readonly string? CheckIfBrandCountCorrect = "There can be a maximum of 15 brands";
        public static readonly string CarImageSaved = "Car Image Saved";
        public static readonly string? CarImageUpdated = "Car Image Updated";
        public static readonly string? CarImageDeleted = "Car Image Deleted";
        public static readonly string CarImagesListed = "Car Images Listed";
        public static readonly string CarsImagesListed = "Cars Images Listed";
        public static readonly string GetDefaultCarImage = "Default Car Image";
        public static readonly string CarImageListed = "Car Image Listed";
        public static readonly string? CarImageLimitExceeded = "Car Image Limit exceeded";
        public static readonly string? CarImageAdded = "Car Image Added";
        public static readonly string AuthorizationDenied = "You are not authorized.";
        internal static readonly string? UserListed = "User Listed";
        internal static readonly string? UserEmailNotAvailable = "User Email Not Available";
        internal static readonly string? UserEmailExist = "User Email Exist";
        internal static readonly string? UserNotFound = "User Not Found!";
        internal static readonly string? UserNotExist = "User Not Exist";
        internal static readonly string? UserDeleted = "User Deleted";
        internal static readonly string? UserRegistered = "User Registered";
        internal static readonly string? PasswordError = "Password Error!";
        internal static readonly string? SuccessfulLogin = "Successful Login!";
        internal static readonly string? UserAlreadyExists = "User Already Exist";
        internal static readonly string? AccessTokenCreated = "Access Token Created";
    }
}
