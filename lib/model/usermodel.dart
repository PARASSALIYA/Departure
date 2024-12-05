class UserModel {
  int? id;
  String? name;
  String? username;
  String? email;
  String? phone;
  String? website;
  AddressModel? address;
  CompanyModel? company;
  UserModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.website,
    this.username,
    this.address,
    this.company,
  });

  factory UserModel.mapToModel(Map model) {
    return UserModel(
      id: model['id'],
      name: model['name'],
      username: model['username'],
      email: model['email'],
      phone: model['phone'],
      website: model['website'],
      address: AddressModel.mapToModel(model['address']),
      company: CompanyModel.mapToModel(model['company']),
    );
  }
}

class AddressModel {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  GeoModel? geo;
  AddressModel({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory AddressModel.mapToModel(Map model) {
    return AddressModel(
      street: model['street'],
      suite: model['suite'],
      city: model['city'],
      zipcode: model['zipcode'],
      geo: GeoModel.mapToModel(model['geo']),
    );
  }
}

class GeoModel {
  String? lat;
  String? lng;

  GeoModel({this.lat, this.lng});

  factory GeoModel.mapToModel(Map model) {
    return GeoModel(
      lat: model['lat'],
      lng: model['lng'],
    );
  }
}

class CompanyModel {
  String? name;
  String? catchPhrase;
  String? bs;

  CompanyModel({this.name, this.catchPhrase, this.bs});

  factory CompanyModel.mapToModel(Map model) {
    return CompanyModel(
      name: model['name'],
      catchPhrase: model['catchPhrase'],
      bs: model['bs'],
    );
  }
}
