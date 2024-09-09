class UserDataModel {
  List<CustomerEstimateFlow>? customerEstimateFlow;

  UserDataModel({this.customerEstimateFlow});

  UserDataModel.fromJson(Map<String, dynamic> json) {
    if (json['Customer_Estimate_Flow'] != null) {
      customerEstimateFlow = <CustomerEstimateFlow>[];
      json['Customer_Estimate_Flow'].forEach((v) {
        customerEstimateFlow!.add(new CustomerEstimateFlow.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.customerEstimateFlow != null) {
      data['Customer_Estimate_Flow'] =
          this.customerEstimateFlow!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CustomerEstimateFlow {
  String? estimateId;
  String? userId;
  String? movingFrom;
  String? movingTo;
  String? movingOn;
  String? distance;
  String? propertySize;
  String? oldFloorNo;
  String? newFloorNo;
  String? oldElevatorAvailability;
  String? newElevatorAvailability;
  String? oldParkingDistance;
  String? newParkingDistance;
  String? unpackingService;
  String? packingService;
  Items? items;
  String? oldHouseAdditionalInfo;
  String? newHouseAdditionalInfo;
  String? totalItems;
  String? status;
  String? orderDate;
  String? dateCreated;
  dynamic dateOfComplete;
  dynamic dateOfCancel;
  String? estimateStatus;
  String? customStatus;
  dynamic estimateComparison;
  dynamic estimateAmount;
  List? successfulPayments;
  String? orderReviewed;
  String? callBack;
  String? moveDateFlexible;
  FromAddress? fromAddress;
  ToAddress? toAddress;
  String? serviceType;
  dynamic storageItems;

  CustomerEstimateFlow(
      {this.estimateId,
        this.userId,
        this.movingFrom,
        this.movingTo,
        this.movingOn,
        this.distance,
        this.propertySize,
        this.oldFloorNo,
        this.newFloorNo,
        this.oldElevatorAvailability,
        this.newElevatorAvailability,
        this.oldParkingDistance,
        this.newParkingDistance,
        this.unpackingService,
        this.packingService,
        this.items,
        this.oldHouseAdditionalInfo,
        this.newHouseAdditionalInfo,
        this.totalItems,
        this.status,
        this.orderDate,
        this.dateCreated,
        this.dateOfComplete,
        this.dateOfCancel,
        this.estimateStatus,
        this.customStatus,
        this.estimateComparison,
        this.estimateAmount,
        this.successfulPayments,
        this.orderReviewed,
        this.callBack,
        this.moveDateFlexible,
        this.fromAddress,
        this.toAddress,
        this.serviceType,
        this.storageItems});

  CustomerEstimateFlow.fromJson(Map<String, dynamic> json) {
    estimateId = json['estimate_id'];
    userId = json['user_id'];
    movingFrom = json['moving_from'];
    movingTo = json['moving_to'];
    movingOn = json['moving_on'];
    distance = json['distance'];
    propertySize = json['property_size'];
    oldFloorNo = json['old_floor_no'];
    newFloorNo = json['new_floor_no'];
    oldElevatorAvailability = json['old_elevator_availability'];
    newElevatorAvailability = json['new_elevator_availability'];
    oldParkingDistance = json['old_parking_distance'];
    newParkingDistance = json['new_parking_distance'];
    unpackingService = json['unpacking_service'];
    packingService = json['packing_service'];
    items = json['items'] != null ? new Items.fromJson(json['items']) : null;
    oldHouseAdditionalInfo = json['old_house_additional_info'];
    newHouseAdditionalInfo = json['new_house_additional_info'];
    totalItems = json['total_items'];
    status = json['status'];
    orderDate = json['order_date'];
    dateCreated = json['date_created'];
    dateOfComplete = json['date_of_complete'];
    dateOfCancel = json['date_of_cancel'];
    estimateStatus = json['estimate_status'];
    customStatus = json['custom_status'];
    estimateComparison = json['estimate_comparison'];
    estimateAmount = json['estimateAmount'];
    if (json['successfulPayments'] != null) {
      successfulPayments = <Null>[];
      json['successfulPayments'].forEach((v) {
        successfulPayments!.add(v);
      });
    }
    orderReviewed = json['order_reviewed'];
    callBack = json['call_back'];
    moveDateFlexible = json['move_date_flexible'];
    fromAddress = json['from_address'] != null
        ? new FromAddress.fromJson(json['from_address'])
        : null;
    toAddress = json['to_address'] != null
        ? new ToAddress.fromJson(json['to_address'])
        : null;
    serviceType = json['service_type'];
    storageItems = json['storage_items'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['estimate_id'] = this.estimateId;
    data['user_id'] = this.userId;
    data['moving_from'] = this.movingFrom;
    data['moving_to'] = this.movingTo;
    data['moving_on'] = this.movingOn;
    data['distance'] = this.distance;
    data['property_size'] = this.propertySize;
    data['old_floor_no'] = this.oldFloorNo;
    data['new_floor_no'] = this.newFloorNo;
    data['old_elevator_availability'] = this.oldElevatorAvailability;
    data['new_elevator_availability'] = this.newElevatorAvailability;
    data['old_parking_distance'] = this.oldParkingDistance;
    data['new_parking_distance'] = this.newParkingDistance;
    data['unpacking_service'] = this.unpackingService;
    data['packing_service'] = this.packingService;
    if (this.items != null) {
      data['items'] = this.items!.toJson();
    }
    data['old_house_additional_info'] = this.oldHouseAdditionalInfo;
    data['new_house_additional_info'] = this.newHouseAdditionalInfo;
    data['total_items'] = this.totalItems;
    data['status'] = this.status;
    data['order_date'] = this.orderDate;
    data['date_created'] = this.dateCreated;
    data['date_of_complete'] = this.dateOfComplete;
    data['date_of_cancel'] = this.dateOfCancel;
    data['estimate_status'] = this.estimateStatus;
    data['custom_status'] = this.customStatus;
    data['estimate_comparison'] = this.estimateComparison;
    data['estimateAmount'] = this.estimateAmount;
    if (this.successfulPayments != null) {
      data['successfulPayments'] =
          this.successfulPayments!.map((v) => v.toJson()).toList();
    }
    data['order_reviewed'] = this.orderReviewed;
    data['call_back'] = this.callBack;
    data['move_date_flexible'] = this.moveDateFlexible;
    if (this.fromAddress != null) {
      data['from_address'] = this.fromAddress!.toJson();
    }
    if (this.toAddress != null) {
      data['to_address'] = this.toAddress!.toJson();
    }
    data['service_type'] = this.serviceType;
    data['storage_items'] = this.storageItems;
    return data;
  }
}

class Items {
  List<Inventory>? inventory;
  CustomItems? customItems;

  Items({this.inventory, this.customItems});

  Items.fromJson(Map<String, dynamic> json) {
    if (json['inventory'] != null) {
      inventory = <Inventory>[];
      json['inventory'].forEach((v) {
        inventory!.add(new Inventory.fromJson(v));
      });
    }
    customItems = json['customItems'] != null
        ? new CustomItems.fromJson(json['customItems'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.inventory != null) {
      data['inventory'] = this.inventory!.map((v) => v.toJson()).toList();
    }
    if (this.customItems != null) {
      data['customItems'] = this.customItems!.toJson();
    }
    return data;
  }
}

class Inventory {
  String? id;
  int? order;
  String? name;
  String? displayName;
  List<Category>? category;

  Inventory({this.id, this.order, this.name, this.displayName, this.category});

  Inventory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    order = json['order'];
    name = json['name'];
    displayName = json['displayName'];
    if (json['category'] != null) {
      category = <Category>[];
      json['category'].forEach((v) {
        category!.add(new Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['order'] = this.order;
    data['name'] = this.name;
    data['displayName'] = this.displayName;
    if (this.category != null) {
      data['category'] = this.category!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Category {
  String? id;
  int? order;
  String? name;
  String? displayName;
  List<ItemsOne>? items;

  Category({this.id, this.order, this.name, this.displayName, this.items});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    order = json['order '];
    name = json['name'];
    displayName = json['displayName'];
    if (json['items'] != null) {
      items = <ItemsOne>[];
      json['items'].forEach((v) {
        items!.add(new ItemsOne.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['order '] = this.order;
    data['name'] = this.name;
    data['displayName'] = this.displayName;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ItemsOne {
  List<Size>? size;
  List<ChildItems>? childItems;
  String? typeOptions;
  Meta? meta;
  int? uniquieId;
  String? name;
  String? displayName;
  int? order;
  String? nameOld;
  int? qty;
  List<Type>? type;
  String? id;

  ItemsOne(
      {this.size,
        this.childItems,
        this.typeOptions,
        this.meta,
        this.uniquieId,
        this.name,
        this.displayName,
        this.order,
        this.nameOld,
        this.qty,
        this.type,
        this.id});

  ItemsOne.fromJson(Map<String, dynamic> json) {
    if (json['size'] != null) {
      size = <Size>[];
      json['size'].forEach((v) {
        size!.add(new Size.fromJson(v));
      });
    }
    if (json['childItems'] != null) {
      childItems = <ChildItems>[];
      json['childItems'].forEach((v) {
        childItems!.add(new ChildItems.fromJson(v));
      });
    }
    typeOptions = json['typeOptions'];
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    uniquieId = json['uniquieId'];
    name = json['name'];
    displayName = json['displayName'];
    order = json['order'];
    nameOld = json['name_old'];
    qty = json['qty'];
    if (json['type'] != null) {
      type = <Type>[];
      json['type'].forEach((v) {
        type!.add(new Type.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.size != null) {
      data['size'] = this.size!.map((v) => v.toJson()).toList();
    }
    if (this.childItems != null) {
      data['childItems'] = this.childItems!.map((v) => v.toJson()).toList();
    }
    data['typeOptions'] = this.typeOptions;
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    data['uniquieId'] = this.uniquieId;
    data['name'] = this.name;
    data['displayName'] = this.displayName;
    data['order'] = this.order;
    data['name_old'] = this.nameOld;
    data['qty'] = this.qty;
    if (this.type != null) {
      data['type'] = this.type!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}

class Size {
  String? option;
  String? tooltip;
  bool? selected;

  Size({this.option, this.tooltip, this.selected});

  Size.fromJson(Map<String, dynamic> json) {
    option = json['option'];
    tooltip = json['tooltip'];
    selected = json['selected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['option'] = this.option;
    data['tooltip'] = this.tooltip;
    data['selected'] = this.selected;
    return data;
  }
}

class ChildItems {
  List<Size>? size;
  String? typeOptions;
  Meta? meta;
  int? uniquieId;
  String? name;
  String? displayName;
  int? order;
  String? nameOld;
  int? qty;
  List<Type>? type;
  String? id;

  ChildItems(
      {this.size,
        this.typeOptions,
        this.meta,
        this.uniquieId,
        this.name,
        this.displayName,
        this.order,
        this.nameOld,
        this.qty,
        this.type,
        this.id});

  ChildItems.fromJson(Map<String, dynamic> json) {
    if (json['size'] != null) {
      size = <Size>[];
      json['size'].forEach((v) {
        size!.add(new Size.fromJson(v));
      });
    }
    typeOptions = json['typeOptions'];
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    uniquieId = json['uniquieId'];
    name = json['name'];
    displayName = json['displayName'];
    order = json['order'];
    nameOld = json['name_old'];
    qty = json['qty'];
    if (json['type'] != null) {
      type = <Type>[];
      json['type'].forEach((v) {
        type!.add(new Type.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.size != null) {
      data['size'] = this.size!.map((v) => v.toJson()).toList();
    }
    data['typeOptions'] = this.typeOptions;
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    data['uniquieId'] = this.uniquieId;
    data['name'] = this.name;
    data['displayName'] = this.displayName;
    data['order'] = this.order;
    data['name_old'] = this.nameOld;
    data['qty'] = this.qty;
    if (this.type != null) {
      data['type'] = this.type!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}

class Meta {
  bool? hasType;
  String? selectType;
  bool? hasVariation;
  bool? hasSize;

  Meta({this.hasType, this.selectType, this.hasVariation, this.hasSize});

  Meta.fromJson(Map<String, dynamic> json) {
    hasType = json['hasType'];
    selectType = json['selectType'];
    hasVariation = json['hasVariation'];
    hasSize = json['hasSize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hasType'] = this.hasType;
    data['selectType'] = this.selectType;
    data['hasVariation'] = this.hasVariation;
    data['hasSize'] = this.hasSize;
    return data;
  }
}

class Type {
  String? id;
  String? option;
  bool? selected;

  Type({this.id, this.option, this.selected});

  Type.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    option = json['option'];
    selected = json['selected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['option'] = this.option;
    data['selected'] = this.selected;
    return data;
  }
}

class CustomItems {
  String? units;
  List<ItemsTwo>? items;

  CustomItems({this.units, this.items});

  CustomItems.fromJson(Map<String, dynamic> json) {
    units = json['units'];
    if (json['items'] != null) {
      items = <ItemsTwo>[];
      json['items'].forEach((v) {
        items!.add(new ItemsTwo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['units'] = this.units;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ItemsTwo {
  String? id;
  String? itemHeight;
  String? itemLength;
  String? itemQty;
  String? itemWidth;
  String? itemDescription;
  String? itemName;

  ItemsTwo(
      {this.id,
        this.itemHeight,
        this.itemLength,
        this.itemQty,
        this.itemWidth,
        this.itemDescription,
        this.itemName});

  ItemsTwo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    itemHeight = json['item_height'];
    itemLength = json['item_length'];
    itemQty = json['item_qty'];
    itemWidth = json['item_width'];
    itemDescription = json['item_description'];
    itemName = json['item_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['item_height'] = this.itemHeight;
    data['item_length'] = this.itemLength;
    data['item_qty'] = this.itemQty;
    data['item_width'] = this.itemWidth;
    data['item_description'] = this.itemDescription;
    data['item_name'] = this.itemName;
    return data;
  }
}

class FromAddress {
  String? firstName;
  String? lastName;
  String? fromAddress;
  String? fromLocality;
  String? fromCity;
  String? fromState;
  String? pincode;

  FromAddress(
      {this.firstName,
        this.lastName,
        this.fromAddress,
        this.fromLocality,
        this.fromCity,
        this.fromState,
        this.pincode});

  FromAddress.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    fromAddress = json['fromAddress'];
    fromLocality = json['fromLocality'];
    fromCity = json['fromCity'];
    fromState = json['fromState'];
    pincode = json['pincode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['fromAddress'] = this.fromAddress;
    data['fromLocality'] = this.fromLocality;
    data['fromCity'] = this.fromCity;
    data['fromState'] = this.fromState;
    data['pincode'] = this.pincode;
    return data;
  }
}

class ToAddress {
  String? firstName;
  String? lastName;
  String? toAddress;
  String? toLocality;
  String? toCity;
  String? toState;
  String? pincode;

  ToAddress(
      {this.firstName,
        this.lastName,
        this.toAddress,
        this.toLocality,
        this.toCity,
        this.toState,
        this.pincode});

  ToAddress.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    toAddress = json['toAddress'];
    toLocality = json['toLocality'];
    toCity = json['toCity'];
    toState = json['toState'];
    pincode = json['pincode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['toAddress'] = this.toAddress;
    data['toLocality'] = this.toLocality;
    data['toCity'] = this.toCity;
    data['toState'] = this.toState;
    data['pincode'] = this.pincode;
    return data;
  }
}
