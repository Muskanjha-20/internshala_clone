// To parse this JSON data, do
//
//     final internshalaModel = internshalaModelFromJson(jsonString);

import 'dart:convert';

InternshalaModel internshalaModelFromJson(String str) => InternshalaModel.fromJson(json.decode(str));

String internshalaModelToJson(InternshalaModel data) => json.encode(data.toJson());

class InternshalaModel {
    InternshipsMeta? internshipsMeta;
    List<int>? internshipIds;

    InternshalaModel({
        this.internshipsMeta,
        this.internshipIds,
    });

    factory InternshalaModel.fromJson(Map<String, dynamic> json) => InternshalaModel(
        internshipsMeta: json["internships_meta"] == null ? null : InternshipsMeta.fromJson(json["internships_meta"]),
        internshipIds: json["internship_ids"] == null ? [] : List<int>.from(json["internship_ids"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "internships_meta": internshipsMeta?.toJson(),
        "internship_ids": internshipIds == null ? [] : List<dynamic>.from(internshipIds!.map((x) => x)),
    };
}

class InternshipsMeta {
    The65381? the65381;
    The65454? the65454;
    The6550? the65501;
    The6550? the65504;
    The65515? the65515;
    The655? the65517;
    The65454? the65522;
    The655? the65524;
    The655? the65531;
    The655? the65532;

    InternshipsMeta({
        this.the65381,
        this.the65454,
        this.the65501,
        this.the65504,
        this.the65515,
        this.the65517,
        this.the65522,
        this.the65524,
        this.the65531,
        this.the65532,
    });

    factory InternshipsMeta.fromJson(Map<String, dynamic> json) => InternshipsMeta(
        the65381: json["65381"] == null ? null : The65381.fromJson(json["65381"]),
        the65454: json["65454"] == null ? null : The65454.fromJson(json["65454"]),
        the65501: json["65501"] == null ? null : The6550.fromJson(json["65501"]),
        the65504: json["65504"] == null ? null : The6550.fromJson(json["65504"]),
        the65515: json["65515"] == null ? null : The65515.fromJson(json["65515"]),
        the65517: json["65517"] == null ? null : The655.fromJson(json["65517"]),
        the65522: json["65522"] == null ? null : The65454.fromJson(json["65522"]),
        the65524: json["65524"] == null ? null : The655.fromJson(json["65524"]),
        the65531: json["65531"] == null ? null : The655.fromJson(json["65531"]),
        the65532: json["65532"] == null ? null : The655.fromJson(json["65532"]),
    );

    Map<String, dynamic> toJson() => {
        "65381": the65381?.toJson(),
        "65454": the65454?.toJson(),
        "65501": the65501?.toJson(),
        "65504": the65504?.toJson(),
        "65515": the65515?.toJson(),
        "65517": the65517?.toJson(),
        "65522": the65522?.toJson(),
        "65524": the65524?.toJson(),
        "65531": the65531?.toJson(),
        "65532": the65532?.toJson(),
    };
}

class The65381 {
    int? id;
    String? title;
    String? employmentType;
    ApplicationStatusMessage? applicationStatusMessage;
    dynamic jobTitle;
    bool? workFromHome;
    String? segment;
    dynamic segmentLabelValue;
    dynamic internshipTypeLabelValue;
    List<dynamic>? jobSegments;
    String? companyName;
    String? companyUrl;
    bool? isPremium;
    bool? isPremiumInternship;
    String? employerName;
    String? companyLogo;
    String? type;
    String? url;
    int? isInternchallenge;
    bool? isExternal;
    bool? isActive;
    DateTime? expiresAt;
    String? closedAt;
    String? profileName;
    bool? partTime;
    String? startDate;
    String? duration;
    Stipend? stipend;
    dynamic salary;
    dynamic jobExperience;
    String? experience;
    String? postedOn;
    int? postedOnDateTime;
    String? applicationDeadline;
    String? expiringIn;
    String? postedByLabel;
    String? postedByLabelType;
    List<String>? locationNames;
    List<The65381Location>? locations;
    DateTime? startDateComparisonFormat;
    DateTime? startDate1;
    DateTime? startDate2;
    bool? isPpo;
    bool? isPpoSalaryDisclosed;
    dynamic ppoSalary;
    dynamic ppoSalary2;
    String? ppoLabelValue;
    bool? toShowExtraLabel;
    String? extraLabelValue;
    bool? isExtraLabelBlack;
    List<dynamic>? campaignNames;
    String? campaignName;
    bool? toShowInSearch;
    String? campaignUrl;
    dynamic campaignStartDateTime;
    dynamic campaignLaunchDateTime;
    dynamic campaignEarlyAccessStartDateTime;
    dynamic campaignEndDateTime;
    List<Label>? labels;
    String? labelsApp;
    List<String>? labelsAppInCard;
    bool? isCovidWfhSelected;
    bool? toShowCardMessage;
    String? message;
    bool? isApplicationCappingEnabled;
    String? applicationCappingMessage;
    List<dynamic>? overrideMetaDetails;
    bool? eligibleForEasyApply;
    bool? eligibleForB2BApplyNow;
    bool? toShowB2BLabel;
    bool? isInternationalJob;
    bool? toShowCoverLetter;
    dynamic officeDays;

    The65381({
        this.id,
        this.title,
        this.employmentType,
        this.applicationStatusMessage,
        this.jobTitle,
        this.workFromHome,
        this.segment,
        this.segmentLabelValue,
        this.internshipTypeLabelValue,
        this.jobSegments,
        this.companyName,
        this.companyUrl,
        this.isPremium,
        this.isPremiumInternship,
        this.employerName,
        this.companyLogo,
        this.type,
        this.url,
        this.isInternchallenge,
        this.isExternal,
        this.isActive,
        this.expiresAt,
        this.closedAt,
        this.profileName,
        this.partTime,
        this.startDate,
        this.duration,
        this.stipend,
        this.salary,
        this.jobExperience,
        this.experience,
        this.postedOn,
        this.postedOnDateTime,
        this.applicationDeadline,
        this.expiringIn,
        this.postedByLabel,
        this.postedByLabelType,
        this.locationNames,
        this.locations,
        this.startDateComparisonFormat,
        this.startDate1,
        this.startDate2,
        this.isPpo,
        this.isPpoSalaryDisclosed,
        this.ppoSalary,
        this.ppoSalary2,
        this.ppoLabelValue,
        this.toShowExtraLabel,
        this.extraLabelValue,
        this.isExtraLabelBlack,
        this.campaignNames,
        this.campaignName,
        this.toShowInSearch,
        this.campaignUrl,
        this.campaignStartDateTime,
        this.campaignLaunchDateTime,
        this.campaignEarlyAccessStartDateTime,
        this.campaignEndDateTime,
        this.labels,
        this.labelsApp,
        this.labelsAppInCard,
        this.isCovidWfhSelected,
        this.toShowCardMessage,
        this.message,
        this.isApplicationCappingEnabled,
        this.applicationCappingMessage,
        this.overrideMetaDetails,
        this.eligibleForEasyApply,
        this.eligibleForB2BApplyNow,
        this.toShowB2BLabel,
        this.isInternationalJob,
        this.toShowCoverLetter,
        this.officeDays,
    });

    factory The65381.fromJson(Map<String, dynamic> json) => The65381(
        id: json["id"],
        title: json["title"],
        employmentType: json["employment_type"],
        applicationStatusMessage: json["application_status_message"] == null ? null : ApplicationStatusMessage.fromJson(json["application_status_message"]),
        jobTitle: json["job_title"],
        workFromHome: json["work_from_home"],
        segment: json["segment"],
        segmentLabelValue: json["segment_label_value"],
        internshipTypeLabelValue: json["internship_type_label_value"],
        jobSegments: json["job_segments"] == null ? [] : List<dynamic>.from(json["job_segments"]!.map((x) => x)),
        companyName: json["company_name"],
        companyUrl: json["company_url"],
        isPremium: json["is_premium"],
        isPremiumInternship: json["is_premium_internship"],
        employerName: json["employer_name"],
        companyLogo: json["company_logo"],
        type: json["type"],
        url: json["url"],
        isInternchallenge: json["is_internchallenge"],
        isExternal: json["is_external"],
        isActive: json["is_active"],
        expiresAt: json["expires_at"] == null ? null : DateTime.parse(json["expires_at"]),
        closedAt: json["closed_at"],
        profileName: json["profile_name"],
        partTime: json["part_time"],
        startDate: json["start_date"],
        duration: json["duration"],
        stipend: json["stipend"] == null ? null : Stipend.fromJson(json["stipend"]),
        salary: json["salary"],
        jobExperience: json["job_experience"],
        experience: json["experience"],
        postedOn: json["posted_on"],
        postedOnDateTime: json["postedOnDateTime"],
        applicationDeadline: json["application_deadline"],
        expiringIn: json["expiring_in"],
        postedByLabel: json["posted_by_label"],
        postedByLabelType: json["posted_by_label_type"],
        locationNames: json["location_names"] == null ? [] : List<String>.from(json["location_names"]!.map((x) => x)),
        locations: json["locations"] == null ? [] : List<The65381Location>.from(json["locations"]!.map((x) => The65381Location.fromJson(x))),
        startDateComparisonFormat: json["start_date_comparison_format"] == null ? null : DateTime.parse(json["start_date_comparison_format"]),
        startDate1: json["start_date1"] == null ? null : DateTime.parse(json["start_date1"]),
        startDate2: json["start_date2"] == null ? null : DateTime.parse(json["start_date2"]),
        isPpo: json["is_ppo"],
        isPpoSalaryDisclosed: json["is_ppo_salary_disclosed"],
        ppoSalary: json["ppo_salary"],
        ppoSalary2: json["ppo_salary2"],
        ppoLabelValue: json["ppo_label_value"],
        toShowExtraLabel: json["to_show_extra_label"],
        extraLabelValue: json["extra_label_value"],
        isExtraLabelBlack: json["is_extra_label_black"],
        campaignNames: json["campaign_names"] == null ? [] : List<dynamic>.from(json["campaign_names"]!.map((x) => x)),
        campaignName: json["campaign_name"],
        toShowInSearch: json["to_show_in_search"],
        campaignUrl: json["campaign_url"],
        campaignStartDateTime: json["campaign_start_date_time"],
        campaignLaunchDateTime: json["campaign_launch_date_time"],
        campaignEarlyAccessStartDateTime: json["campaign_early_access_start_date_time"],
        campaignEndDateTime: json["campaign_end_date_time"],
        labels: json["labels"] == null ? [] : List<Label>.from(json["labels"]!.map((x) => Label.fromJson(x))),
        labelsApp: json["labels_app"],
        labelsAppInCard: json["labels_app_in_card"] == null ? [] : List<String>.from(json["labels_app_in_card"]!.map((x) => x)),
        isCovidWfhSelected: json["is_covid_wfh_selected"],
        toShowCardMessage: json["to_show_card_message"],
        message: json["message"],
        isApplicationCappingEnabled: json["is_application_capping_enabled"],
        applicationCappingMessage: json["application_capping_message"],
        overrideMetaDetails: json["override_meta_details"] == null ? [] : List<dynamic>.from(json["override_meta_details"]!.map((x) => x)),
        eligibleForEasyApply: json["eligible_for_easy_apply"],
        eligibleForB2BApplyNow: json["eligible_for_b2b_apply_now"],
        toShowB2BLabel: json["to_show_b2b_label"],
        isInternationalJob: json["is_international_job"],
        toShowCoverLetter: json["to_show_cover_letter"],
        officeDays: json["office_days"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "employment_type": employmentType,
        "application_status_message": applicationStatusMessage?.toJson(),
        "job_title": jobTitle,
        "work_from_home": workFromHome,
        "segment": segment,
        "segment_label_value": segmentLabelValue,
        "internship_type_label_value": internshipTypeLabelValue,
        "job_segments": jobSegments == null ? [] : List<dynamic>.from(jobSegments!.map((x) => x)),
        "company_name": companyName,
        "company_url": companyUrl,
        "is_premium": isPremium,
        "is_premium_internship": isPremiumInternship,
        "employer_name": employerName,
        "company_logo": companyLogo,
        "type": type,
        "url": url,
        "is_internchallenge": isInternchallenge,
        "is_external": isExternal,
        "is_active": isActive,
        "expires_at": "${expiresAt!.year.toString().padLeft(4, '0')}-${expiresAt!.month.toString().padLeft(2, '0')}-${expiresAt!.day.toString().padLeft(2, '0')}",
        "closed_at": closedAt,
        "profile_name": profileName,
        "part_time": partTime,
        "start_date": startDate,
        "duration": duration,
        "stipend": stipend?.toJson(),
        "salary": salary,
        "job_experience": jobExperience,
        "experience": experience,
        "posted_on": postedOn,
        "postedOnDateTime": postedOnDateTime,
        "application_deadline": applicationDeadline,
        "expiring_in": expiringIn,
        "posted_by_label": postedByLabel,
        "posted_by_label_type": postedByLabelType,
        "location_names": locationNames == null ? [] : List<dynamic>.from(locationNames!.map((x) => x)),
        "locations": locations == null ? [] : List<dynamic>.from(locations!.map((x) => x.toJson())),
        "start_date_comparison_format": "${startDateComparisonFormat!.year.toString().padLeft(4, '0')}-${startDateComparisonFormat!.month.toString().padLeft(2, '0')}-${startDateComparisonFormat!.day.toString().padLeft(2, '0')}",
        "start_date1": "${startDate1!.year.toString().padLeft(4, '0')}-${startDate1!.month.toString().padLeft(2, '0')}-${startDate1!.day.toString().padLeft(2, '0')}",
        "start_date2": "${startDate2!.year.toString().padLeft(4, '0')}-${startDate2!.month.toString().padLeft(2, '0')}-${startDate2!.day.toString().padLeft(2, '0')}",
        "is_ppo": isPpo,
        "is_ppo_salary_disclosed": isPpoSalaryDisclosed,
        "ppo_salary": ppoSalary,
        "ppo_salary2": ppoSalary2,
        "ppo_label_value": ppoLabelValue,
        "to_show_extra_label": toShowExtraLabel,
        "extra_label_value": extraLabelValue,
        "is_extra_label_black": isExtraLabelBlack,
        "campaign_names": campaignNames == null ? [] : List<dynamic>.from(campaignNames!.map((x) => x)),
        "campaign_name": campaignName,
        "to_show_in_search": toShowInSearch,
        "campaign_url": campaignUrl,
        "campaign_start_date_time": campaignStartDateTime,
        "campaign_launch_date_time": campaignLaunchDateTime,
        "campaign_early_access_start_date_time": campaignEarlyAccessStartDateTime,
        "campaign_end_date_time": campaignEndDateTime,
        "labels": labels == null ? [] : List<dynamic>.from(labels!.map((x) => x.toJson())),
        "labels_app": labelsApp,
        "labels_app_in_card": labelsAppInCard == null ? [] : List<dynamic>.from(labelsAppInCard!.map((x) => x)),
        "is_covid_wfh_selected": isCovidWfhSelected,
        "to_show_card_message": toShowCardMessage,
        "message": message,
        "is_application_capping_enabled": isApplicationCappingEnabled,
        "application_capping_message": applicationCappingMessage,
        "override_meta_details": overrideMetaDetails == null ? [] : List<dynamic>.from(overrideMetaDetails!.map((x) => x)),
        "eligible_for_easy_apply": eligibleForEasyApply,
        "eligible_for_b2b_apply_now": eligibleForB2BApplyNow,
        "to_show_b2b_label": toShowB2BLabel,
        "is_international_job": isInternationalJob,
        "to_show_cover_letter": toShowCoverLetter,
        "office_days": officeDays,
    };
}

class ApplicationStatusMessage {
    bool? toShow;
    String? message;
    String? type;

    ApplicationStatusMessage({
        this.toShow,
        this.message,
        this.type,
    });

    factory ApplicationStatusMessage.fromJson(Map<String, dynamic> json) => ApplicationStatusMessage(
        toShow: json["to_show"],
        message: json["message"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "to_show": toShow,
        "message": message,
        "type": type,
    };
}

class Label {
    List<String>? labelValue;
    List<String>? labelMobile;
    List<String>? labelApp;
    List<String>? labelsAppInCard;

    Label({
        this.labelValue,
        this.labelMobile,
        this.labelApp,
        this.labelsAppInCard,
    });

    factory Label.fromJson(Map<String, dynamic> json) => Label(
        labelValue: json["label_value"] == null ? [] : List<String>.from(json["label_value"]!.map((x) => x)),
        labelMobile: json["label_mobile"] == null ? [] : List<String>.from(json["label_mobile"]!.map((x) => x)),
        labelApp: json["label_app"] == null ? [] : List<String>.from(json["label_app"]!.map((x) => x)),
        labelsAppInCard: json["labels_app_in_card"] == null ? [] : List<String>.from(json["labels_app_in_card"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "label_value": labelValue == null ? [] : List<dynamic>.from(labelValue!.map((x) => x)),
        "label_mobile": labelMobile == null ? [] : List<dynamic>.from(labelMobile!.map((x) => x)),
        "label_app": labelApp == null ? [] : List<dynamic>.from(labelApp!.map((x) => x)),
        "labels_app_in_card": labelsAppInCard == null ? [] : List<dynamic>.from(labelsAppInCard!.map((x) => x)),
    };
}

class The65381Location {
    String? string;
    String? link;
    String? country;
    String? region;
    String? locationName;

    The65381Location({
        this.string,
        this.link,
        this.country,
        this.region,
        this.locationName,
    });

    factory The65381Location.fromJson(Map<String, dynamic> json) => The65381Location(
        string: json["string"],
        link: json["link"],
        country: json["country"],
        region: json["region"],
        locationName: json["locationName"],
    );

    Map<String, dynamic> toJson() => {
        "string": string,
        "link": link,
        "country": country,
        "region": region,
        "locationName": locationName,
    };
}

class Stipend {
    String? salary;
    dynamic tooltip;
    int? salaryValue1;
    dynamic salaryValue2;
    String? salaryType;
    String? currency;
    String? scale;
    bool? largeStipendText;

    Stipend({
        this.salary,
        this.tooltip,
        this.salaryValue1,
        this.salaryValue2,
        this.salaryType,
        this.currency,
        this.scale,
        this.largeStipendText,
    });

    factory Stipend.fromJson(Map<String, dynamic> json) => Stipend(
        salary: json["salary"],
        tooltip: json["tooltip"],
        salaryValue1: json["salaryValue1"],
        salaryValue2: json["salaryValue2"],
        salaryType: json["salaryType"],
        currency: json["currency"],
        scale: json["scale"],
        largeStipendText: json["large_stipend_text"],
    );

    Map<String, dynamic> toJson() => {
        "salary": salary,
        "tooltip": tooltip,
        "salaryValue1": salaryValue1,
        "salaryValue2": salaryValue2,
        "salaryType": salaryType,
        "currency": currency,
        "scale": scale,
        "large_stipend_text": largeStipendText,
    };
}

class The65454 {
    int? id;
    String? title;
    String? employmentType;
    ApplicationStatusMessage? applicationStatusMessage;
    dynamic jobTitle;
    bool? workFromHome;
    String? segment;
    dynamic segmentLabelValue;
    dynamic internshipTypeLabelValue;
    List<dynamic>? jobSegments;
    String? companyName;
    String? companyUrl;
    bool? isPremium;
    bool? isPremiumInternship;
    String? employerName;
    String? companyLogo;
    String? type;
    String? url;
    int? isInternchallenge;
    bool? isExternal;
    bool? isActive;
    DateTime? expiresAt;
    String? closedAt;
    String? profileName;
    bool? partTime;
    String? startDate;
    String? duration;
    Stipend? stipend;
    dynamic salary;
    dynamic jobExperience;
    String? experience;
    String? postedOn;
    int? postedOnDateTime;
    String? applicationDeadline;
    String? expiringIn;
    String? postedByLabel;
    String? postedByLabelType;
    List<dynamic>? locationNames;
    List<dynamic>? locations;
    DateTime? startDateComparisonFormat;
    DateTime? startDate1;
    DateTime? startDate2;
    bool? isPpo;
    bool? isPpoSalaryDisclosed;
    dynamic ppoSalary;
    dynamic ppoSalary2;
    String? ppoLabelValue;
    bool? toShowExtraLabel;
    String? extraLabelValue;
    bool? isExtraLabelBlack;
    List<dynamic>? campaignNames;
    String? campaignName;
    bool? toShowInSearch;
    String? campaignUrl;
    dynamic campaignStartDateTime;
    dynamic campaignLaunchDateTime;
    dynamic campaignEarlyAccessStartDateTime;
    dynamic campaignEndDateTime;
    List<Label>? labels;
    String? labelsApp;
    List<String>? labelsAppInCard;
    bool? isCovidWfhSelected;
    bool? toShowCardMessage;
    String? message;
    bool? isApplicationCappingEnabled;
    String? applicationCappingMessage;
    List<dynamic>? overrideMetaDetails;
    bool? eligibleForEasyApply;
    bool? eligibleForB2BApplyNow;
    bool? toShowB2BLabel;
    bool? isInternationalJob;
    bool? toShowCoverLetter;
    dynamic officeDays;

    The65454({
        this.id,
        this.title,
        this.employmentType,
        this.applicationStatusMessage,
        this.jobTitle,
        this.workFromHome,
        this.segment,
        this.segmentLabelValue,
        this.internshipTypeLabelValue,
        this.jobSegments,
        this.companyName,
        this.companyUrl,
        this.isPremium,
        this.isPremiumInternship,
        this.employerName,
        this.companyLogo,
        this.type,
        this.url,
        this.isInternchallenge,
        this.isExternal,
        this.isActive,
        this.expiresAt,
        this.closedAt,
        this.profileName,
        this.partTime,
        this.startDate,
        this.duration,
        this.stipend,
        this.salary,
        this.jobExperience,
        this.experience,
        this.postedOn,
        this.postedOnDateTime,
        this.applicationDeadline,
        this.expiringIn,
        this.postedByLabel,
        this.postedByLabelType,
        this.locationNames,
        this.locations,
        this.startDateComparisonFormat,
        this.startDate1,
        this.startDate2,
        this.isPpo,
        this.isPpoSalaryDisclosed,
        this.ppoSalary,
        this.ppoSalary2,
        this.ppoLabelValue,
        this.toShowExtraLabel,
        this.extraLabelValue,
        this.isExtraLabelBlack,
        this.campaignNames,
        this.campaignName,
        this.toShowInSearch,
        this.campaignUrl,
        this.campaignStartDateTime,
        this.campaignLaunchDateTime,
        this.campaignEarlyAccessStartDateTime,
        this.campaignEndDateTime,
        this.labels,
        this.labelsApp,
        this.labelsAppInCard,
        this.isCovidWfhSelected,
        this.toShowCardMessage,
        this.message,
        this.isApplicationCappingEnabled,
        this.applicationCappingMessage,
        this.overrideMetaDetails,
        this.eligibleForEasyApply,
        this.eligibleForB2BApplyNow,
        this.toShowB2BLabel,
        this.isInternationalJob,
        this.toShowCoverLetter,
        this.officeDays,
    });

    factory The65454.fromJson(Map<String, dynamic> json) => The65454(
        id: json["id"],
        title: json["title"],
        employmentType: json["employment_type"],
        applicationStatusMessage: json["application_status_message"] == null ? null : ApplicationStatusMessage.fromJson(json["application_status_message"]),
        jobTitle: json["job_title"],
        workFromHome: json["work_from_home"],
        segment: json["segment"],
        segmentLabelValue: json["segment_label_value"],
        internshipTypeLabelValue: json["internship_type_label_value"],
        jobSegments: json["job_segments"] == null ? [] : List<dynamic>.from(json["job_segments"]!.map((x) => x)),
        companyName: json["company_name"],
        companyUrl: json["company_url"],
        isPremium: json["is_premium"],
        isPremiumInternship: json["is_premium_internship"],
        employerName: json["employer_name"],
        companyLogo: json["company_logo"],
        type: json["type"],
        url: json["url"],
        isInternchallenge: json["is_internchallenge"],
        isExternal: json["is_external"],
        isActive: json["is_active"],
        expiresAt: json["expires_at"] == null ? null : DateTime.parse(json["expires_at"]),
        closedAt: json["closed_at"],
        profileName: json["profile_name"],
        partTime: json["part_time"],
        startDate: json["start_date"],
        duration: json["duration"],
        stipend: json["stipend"] == null ? null : Stipend.fromJson(json["stipend"]),
        salary: json["salary"],
        jobExperience: json["job_experience"],
        experience: json["experience"],
        postedOn: json["posted_on"],
        postedOnDateTime: json["postedOnDateTime"],
        applicationDeadline: json["application_deadline"],
        expiringIn: json["expiring_in"],
        postedByLabel: json["posted_by_label"],
        postedByLabelType: json["posted_by_label_type"],
        locationNames: json["location_names"] == null ? [] : List<dynamic>.from(json["location_names"]!.map((x) => x)),
        locations: json["locations"] == null ? [] : List<dynamic>.from(json["locations"]!.map((x) => x)),
        startDateComparisonFormat: json["start_date_comparison_format"] == null ? null : DateTime.parse(json["start_date_comparison_format"]),
        startDate1: json["start_date1"] == null ? null : DateTime.parse(json["start_date1"]),
        startDate2: json["start_date2"] == null ? null : DateTime.parse(json["start_date2"]),
        isPpo: json["is_ppo"],
        isPpoSalaryDisclosed: json["is_ppo_salary_disclosed"],
        ppoSalary: json["ppo_salary"],
        ppoSalary2: json["ppo_salary2"],
        ppoLabelValue: json["ppo_label_value"],
        toShowExtraLabel: json["to_show_extra_label"],
        extraLabelValue: json["extra_label_value"],
        isExtraLabelBlack: json["is_extra_label_black"],
        campaignNames: json["campaign_names"] == null ? [] : List<dynamic>.from(json["campaign_names"]!.map((x) => x)),
        campaignName: json["campaign_name"],
        toShowInSearch: json["to_show_in_search"],
        campaignUrl: json["campaign_url"],
        campaignStartDateTime: json["campaign_start_date_time"],
        campaignLaunchDateTime: json["campaign_launch_date_time"],
        campaignEarlyAccessStartDateTime: json["campaign_early_access_start_date_time"],
        campaignEndDateTime: json["campaign_end_date_time"],
        labels: json["labels"] == null ? [] : List<Label>.from(json["labels"]!.map((x) => Label.fromJson(x))),
        labelsApp: json["labels_app"],
        labelsAppInCard: json["labels_app_in_card"] == null ? [] : List<String>.from(json["labels_app_in_card"]!.map((x) => x)),
        isCovidWfhSelected: json["is_covid_wfh_selected"],
        toShowCardMessage: json["to_show_card_message"],
        message: json["message"],
        isApplicationCappingEnabled: json["is_application_capping_enabled"],
        applicationCappingMessage: json["application_capping_message"],
        overrideMetaDetails: json["override_meta_details"] == null ? [] : List<dynamic>.from(json["override_meta_details"]!.map((x) => x)),
        eligibleForEasyApply: json["eligible_for_easy_apply"],
        eligibleForB2BApplyNow: json["eligible_for_b2b_apply_now"],
        toShowB2BLabel: json["to_show_b2b_label"],
        isInternationalJob: json["is_international_job"],
        toShowCoverLetter: json["to_show_cover_letter"],
        officeDays: json["office_days"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "employment_type": employmentType,
        "application_status_message": applicationStatusMessage?.toJson(),
        "job_title": jobTitle,
        "work_from_home": workFromHome,
        "segment": segment,
        "segment_label_value": segmentLabelValue,
        "internship_type_label_value": internshipTypeLabelValue,
        "job_segments": jobSegments == null ? [] : List<dynamic>.from(jobSegments!.map((x) => x)),
        "company_name": companyName,
        "company_url": companyUrl,
        "is_premium": isPremium,
        "is_premium_internship": isPremiumInternship,
        "employer_name": employerName,
        "company_logo": companyLogo,
        "type": type,
        "url": url,
        "is_internchallenge": isInternchallenge,
        "is_external": isExternal,
        "is_active": isActive,
        "expires_at": "${expiresAt!.year.toString().padLeft(4, '0')}-${expiresAt!.month.toString().padLeft(2, '0')}-${expiresAt!.day.toString().padLeft(2, '0')}",
        "closed_at": closedAt,
        "profile_name": profileName,
        "part_time": partTime,
        "start_date": startDate,
        "duration": duration,
        "stipend": stipend?.toJson(),
        "salary": salary,
        "job_experience": jobExperience,
        "experience": experience,
        "posted_on": postedOn,
        "postedOnDateTime": postedOnDateTime,
        "application_deadline": applicationDeadline,
        "expiring_in": expiringIn,
        "posted_by_label": postedByLabel,
        "posted_by_label_type": postedByLabelType,
        "location_names": locationNames == null ? [] : List<dynamic>.from(locationNames!.map((x) => x)),
        "locations": locations == null ? [] : List<dynamic>.from(locations!.map((x) => x)),
        "start_date_comparison_format": "${startDateComparisonFormat!.year.toString().padLeft(4, '0')}-${startDateComparisonFormat!.month.toString().padLeft(2, '0')}-${startDateComparisonFormat!.day.toString().padLeft(2, '0')}",
        "start_date1": "${startDate1!.year.toString().padLeft(4, '0')}-${startDate1!.month.toString().padLeft(2, '0')}-${startDate1!.day.toString().padLeft(2, '0')}",
        "start_date2": "${startDate2!.year.toString().padLeft(4, '0')}-${startDate2!.month.toString().padLeft(2, '0')}-${startDate2!.day.toString().padLeft(2, '0')}",
        "is_ppo": isPpo,
        "is_ppo_salary_disclosed": isPpoSalaryDisclosed,
        "ppo_salary": ppoSalary,
        "ppo_salary2": ppoSalary2,
        "ppo_label_value": ppoLabelValue,
        "to_show_extra_label": toShowExtraLabel,
        "extra_label_value": extraLabelValue,
        "is_extra_label_black": isExtraLabelBlack,
        "campaign_names": campaignNames == null ? [] : List<dynamic>.from(campaignNames!.map((x) => x)),
        "campaign_name": campaignName,
        "to_show_in_search": toShowInSearch,
        "campaign_url": campaignUrl,
        "campaign_start_date_time": campaignStartDateTime,
        "campaign_launch_date_time": campaignLaunchDateTime,
        "campaign_early_access_start_date_time": campaignEarlyAccessStartDateTime,
        "campaign_end_date_time": campaignEndDateTime,
        "labels": labels == null ? [] : List<dynamic>.from(labels!.map((x) => x.toJson())),
        "labels_app": labelsApp,
        "labels_app_in_card": labelsAppInCard == null ? [] : List<dynamic>.from(labelsAppInCard!.map((x) => x)),
        "is_covid_wfh_selected": isCovidWfhSelected,
        "to_show_card_message": toShowCardMessage,
        "message": message,
        "is_application_capping_enabled": isApplicationCappingEnabled,
        "application_capping_message": applicationCappingMessage,
        "override_meta_details": overrideMetaDetails == null ? [] : List<dynamic>.from(overrideMetaDetails!.map((x) => x)),
        "eligible_for_easy_apply": eligibleForEasyApply,
        "eligible_for_b2b_apply_now": eligibleForB2BApplyNow,
        "to_show_b2b_label": toShowB2BLabel,
        "is_international_job": isInternationalJob,
        "to_show_cover_letter": toShowCoverLetter,
        "office_days": officeDays,
    };
}

class The6550 {
    int? id;
    String? title;
    String? employmentType;
    ApplicationStatusMessage? applicationStatusMessage;
    dynamic jobTitle;
    bool? workFromHome;
    String? segment;
    dynamic segmentLabelValue;
    dynamic internshipTypeLabelValue;
    List<String>? jobSegments;
    String? companyName;
    String? companyUrl;
    bool? isPremium;
    bool? isPremiumInternship;
    String? employerName;
    String? companyLogo;
    String? type;
    String? url;
    int? isInternchallenge;
    bool? isExternal;
    bool? isActive;
    DateTime? expiresAt;
    String? closedAt;
    String? profileName;
    bool? partTime;
    String? startDate;
    String? duration;
    Stipend? stipend;
    dynamic salary;
    dynamic jobExperience;
    String? experience;
    String? postedOn;
    int? postedOnDateTime;
    String? applicationDeadline;
    String? expiringIn;
    String? postedByLabel;
    String? postedByLabelType;
    List<String>? locationNames;
    List<The65381Location>? locations;
    DateTime? startDateComparisonFormat;
    DateTime? startDate1;
    DateTime? startDate2;
    bool? isPpo;
    bool? isPpoSalaryDisclosed;
    dynamic ppoSalary;
    dynamic ppoSalary2;
    String? ppoLabelValue;
    bool? toShowExtraLabel;
    String? extraLabelValue;
    bool? isExtraLabelBlack;
    List<dynamic>? campaignNames;
    String? campaignName;
    bool? toShowInSearch;
    String? campaignUrl;
    dynamic campaignStartDateTime;
    dynamic campaignLaunchDateTime;
    dynamic campaignEarlyAccessStartDateTime;
    dynamic campaignEndDateTime;
    List<Label>? labels;
    String? labelsApp;
    List<String>? labelsAppInCard;
    bool? isCovidWfhSelected;
    bool? toShowCardMessage;
    String? message;
    bool? isApplicationCappingEnabled;
    String? applicationCappingMessage;
    List<dynamic>? overrideMetaDetails;
    bool? eligibleForEasyApply;
    bool? eligibleForB2BApplyNow;
    bool? toShowB2BLabel;
    bool? isInternationalJob;
    bool? toShowCoverLetter;
    String? officeDays;

    The6550({
        this.id,
        this.title,
        this.employmentType,
        this.applicationStatusMessage,
        this.jobTitle,
        this.workFromHome,
        this.segment,
        this.segmentLabelValue,
        this.internshipTypeLabelValue,
        this.jobSegments,
        this.companyName,
        this.companyUrl,
        this.isPremium,
        this.isPremiumInternship,
        this.employerName,
        this.companyLogo,
        this.type,
        this.url,
        this.isInternchallenge,
        this.isExternal,
        this.isActive,
        this.expiresAt,
        this.closedAt,
        this.profileName,
        this.partTime,
        this.startDate,
        this.duration,
        this.stipend,
        this.salary,
        this.jobExperience,
        this.experience,
        this.postedOn,
        this.postedOnDateTime,
        this.applicationDeadline,
        this.expiringIn,
        this.postedByLabel,
        this.postedByLabelType,
        this.locationNames,
        this.locations,
        this.startDateComparisonFormat,
        this.startDate1,
        this.startDate2,
        this.isPpo,
        this.isPpoSalaryDisclosed,
        this.ppoSalary,
        this.ppoSalary2,
        this.ppoLabelValue,
        this.toShowExtraLabel,
        this.extraLabelValue,
        this.isExtraLabelBlack,
        this.campaignNames,
        this.campaignName,
        this.toShowInSearch,
        this.campaignUrl,
        this.campaignStartDateTime,
        this.campaignLaunchDateTime,
        this.campaignEarlyAccessStartDateTime,
        this.campaignEndDateTime,
        this.labels,
        this.labelsApp,
        this.labelsAppInCard,
        this.isCovidWfhSelected,
        this.toShowCardMessage,
        this.message,
        this.isApplicationCappingEnabled,
        this.applicationCappingMessage,
        this.overrideMetaDetails,
        this.eligibleForEasyApply,
        this.eligibleForB2BApplyNow,
        this.toShowB2BLabel,
        this.isInternationalJob,
        this.toShowCoverLetter,
        this.officeDays,
    });

    factory The6550.fromJson(Map<String, dynamic> json) => The6550(
        id: json["id"],
        title: json["title"],
        employmentType: json["employment_type"],
        applicationStatusMessage: json["application_status_message"] == null ? null : ApplicationStatusMessage.fromJson(json["application_status_message"]),
        jobTitle: json["job_title"],
        workFromHome: json["work_from_home"],
        segment: json["segment"],
        segmentLabelValue: json["segment_label_value"],
        internshipTypeLabelValue: json["internship_type_label_value"],
        jobSegments: json["job_segments"] == null ? [] : List<String>.from(json["job_segments"]!.map((x) => x)),
        companyName: json["company_name"],
        companyUrl: json["company_url"],
        isPremium: json["is_premium"],
        isPremiumInternship: json["is_premium_internship"],
        employerName: json["employer_name"],
        companyLogo: json["company_logo"],
        type: json["type"],
        url: json["url"],
        isInternchallenge: json["is_internchallenge"],
        isExternal: json["is_external"],
        isActive: json["is_active"],
        expiresAt: json["expires_at"] == null ? null : DateTime.parse(json["expires_at"]),
        closedAt: json["closed_at"],
        profileName: json["profile_name"],
        partTime: json["part_time"],
        startDate: json["start_date"],
        duration: json["duration"],
        stipend: json["stipend"] == null ? null : Stipend.fromJson(json["stipend"]),
        salary: json["salary"],
        jobExperience: json["job_experience"],
        experience: json["experience"],
        postedOn: json["posted_on"],
        postedOnDateTime: json["postedOnDateTime"],
        applicationDeadline: json["application_deadline"],
        expiringIn: json["expiring_in"],
        postedByLabel: json["posted_by_label"],
        postedByLabelType: json["posted_by_label_type"],
        locationNames: json["location_names"] == null ? [] : List<String>.from(json["location_names"]!.map((x) => x)),
        locations: json["locations"] == null ? [] : List<The65381Location>.from(json["locations"]!.map((x) => The65381Location.fromJson(x))),
        startDateComparisonFormat: json["start_date_comparison_format"] == null ? null : DateTime.parse(json["start_date_comparison_format"]),
        startDate1: json["start_date1"] == null ? null : DateTime.parse(json["start_date1"]),
        startDate2: json["start_date2"] == null ? null : DateTime.parse(json["start_date2"]),
        isPpo: json["is_ppo"],
        isPpoSalaryDisclosed: json["is_ppo_salary_disclosed"],
        ppoSalary: json["ppo_salary"],
        ppoSalary2: json["ppo_salary2"],
        ppoLabelValue: json["ppo_label_value"],
        toShowExtraLabel: json["to_show_extra_label"],
        extraLabelValue: json["extra_label_value"],
        isExtraLabelBlack: json["is_extra_label_black"],
        campaignNames: json["campaign_names"] == null ? [] : List<dynamic>.from(json["campaign_names"]!.map((x) => x)),
        campaignName: json["campaign_name"],
        toShowInSearch: json["to_show_in_search"],
        campaignUrl: json["campaign_url"],
        campaignStartDateTime: json["campaign_start_date_time"],
        campaignLaunchDateTime: json["campaign_launch_date_time"],
        campaignEarlyAccessStartDateTime: json["campaign_early_access_start_date_time"],
        campaignEndDateTime: json["campaign_end_date_time"],
        labels: json["labels"] == null ? [] : List<Label>.from(json["labels"]!.map((x) => Label.fromJson(x))),
        labelsApp: json["labels_app"],
        labelsAppInCard: json["labels_app_in_card"] == null ? [] : List<String>.from(json["labels_app_in_card"]!.map((x) => x)),
        isCovidWfhSelected: json["is_covid_wfh_selected"],
        toShowCardMessage: json["to_show_card_message"],
        message: json["message"],
        isApplicationCappingEnabled: json["is_application_capping_enabled"],
        applicationCappingMessage: json["application_capping_message"],
        overrideMetaDetails: json["override_meta_details"] == null ? [] : List<dynamic>.from(json["override_meta_details"]!.map((x) => x)),
        eligibleForEasyApply: json["eligible_for_easy_apply"],
        eligibleForB2BApplyNow: json["eligible_for_b2b_apply_now"],
        toShowB2BLabel: json["to_show_b2b_label"],
        isInternationalJob: json["is_international_job"],
        toShowCoverLetter: json["to_show_cover_letter"],
        officeDays: json["office_days"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "employment_type": employmentType,
        "application_status_message": applicationStatusMessage?.toJson(),
        "job_title": jobTitle,
        "work_from_home": workFromHome,
        "segment": segment,
        "segment_label_value": segmentLabelValue,
        "internship_type_label_value": internshipTypeLabelValue,
        "job_segments": jobSegments == null ? [] : List<dynamic>.from(jobSegments!.map((x) => x)),
        "company_name": companyName,
        "company_url": companyUrl,
        "is_premium": isPremium,
        "is_premium_internship": isPremiumInternship,
        "employer_name": employerName,
        "company_logo": companyLogo,
        "type": type,
        "url": url,
        "is_internchallenge": isInternchallenge,
        "is_external": isExternal,
        "is_active": isActive,
        "expires_at": "${expiresAt!.year.toString().padLeft(4, '0')}-${expiresAt!.month.toString().padLeft(2, '0')}-${expiresAt!.day.toString().padLeft(2, '0')}",
        "closed_at": closedAt,
        "profile_name": profileName,
        "part_time": partTime,
        "start_date": startDate,
        "duration": duration,
        "stipend": stipend?.toJson(),
        "salary": salary,
        "job_experience": jobExperience,
        "experience": experience,
        "posted_on": postedOn,
        "postedOnDateTime": postedOnDateTime,
        "application_deadline": applicationDeadline,
        "expiring_in": expiringIn,
        "posted_by_label": postedByLabel,
        "posted_by_label_type": postedByLabelType,
        "location_names": locationNames == null ? [] : List<dynamic>.from(locationNames!.map((x) => x)),
        "locations": locations == null ? [] : List<dynamic>.from(locations!.map((x) => x.toJson())),
        "start_date_comparison_format": "${startDateComparisonFormat!.year.toString().padLeft(4, '0')}-${startDateComparisonFormat!.month.toString().padLeft(2, '0')}-${startDateComparisonFormat!.day.toString().padLeft(2, '0')}",
        "start_date1": "${startDate1!.year.toString().padLeft(4, '0')}-${startDate1!.month.toString().padLeft(2, '0')}-${startDate1!.day.toString().padLeft(2, '0')}",
        "start_date2": "${startDate2!.year.toString().padLeft(4, '0')}-${startDate2!.month.toString().padLeft(2, '0')}-${startDate2!.day.toString().padLeft(2, '0')}",
        "is_ppo": isPpo,
        "is_ppo_salary_disclosed": isPpoSalaryDisclosed,
        "ppo_salary": ppoSalary,
        "ppo_salary2": ppoSalary2,
        "ppo_label_value": ppoLabelValue,
        "to_show_extra_label": toShowExtraLabel,
        "extra_label_value": extraLabelValue,
        "is_extra_label_black": isExtraLabelBlack,
        "campaign_names": campaignNames == null ? [] : List<dynamic>.from(campaignNames!.map((x) => x)),
        "campaign_name": campaignName,
        "to_show_in_search": toShowInSearch,
        "campaign_url": campaignUrl,
        "campaign_start_date_time": campaignStartDateTime,
        "campaign_launch_date_time": campaignLaunchDateTime,
        "campaign_early_access_start_date_time": campaignEarlyAccessStartDateTime,
        "campaign_end_date_time": campaignEndDateTime,
        "labels": labels == null ? [] : List<dynamic>.from(labels!.map((x) => x.toJson())),
        "labels_app": labelsApp,
        "labels_app_in_card": labelsAppInCard == null ? [] : List<dynamic>.from(labelsAppInCard!.map((x) => x)),
        "is_covid_wfh_selected": isCovidWfhSelected,
        "to_show_card_message": toShowCardMessage,
        "message": message,
        "is_application_capping_enabled": isApplicationCappingEnabled,
        "application_capping_message": applicationCappingMessage,
        "override_meta_details": overrideMetaDetails == null ? [] : List<dynamic>.from(overrideMetaDetails!.map((x) => x)),
        "eligible_for_easy_apply": eligibleForEasyApply,
        "eligible_for_b2b_apply_now": eligibleForB2BApplyNow,
        "to_show_b2b_label": toShowB2BLabel,
        "is_international_job": isInternationalJob,
        "to_show_cover_letter": toShowCoverLetter,
        "office_days": officeDays,
    };
}

class The65515 {
    int? id;
    String? title;
    String? employmentType;
    ApplicationStatusMessage? applicationStatusMessage;
    dynamic jobTitle;
    bool? workFromHome;
    String? segment;
    dynamic segmentLabelValue;
    dynamic internshipTypeLabelValue;
    List<dynamic>? jobSegments;
    String? companyName;
    String? companyUrl;
    bool? isPremium;
    bool? isPremiumInternship;
    String? employerName;
    String? companyLogo;
    String? type;
    String? url;
    int? isInternchallenge;
    bool? isExternal;
    bool? isActive;
    DateTime? expiresAt;
    String? closedAt;
    String? profileName;
    bool? partTime;
    String? startDate;
    String? duration;
    Stipend? stipend;
    dynamic salary;
    dynamic jobExperience;
    String? experience;
    String? postedOn;
    int? postedOnDateTime;
    String? applicationDeadline;
    String? expiringIn;
    String? postedByLabel;
    String? postedByLabelType;
    List<String>? locationNames;
    List<The65515Location>? locations;
    DateTime? startDateComparisonFormat;
    DateTime? startDate1;
    DateTime? startDate2;
    bool? isPpo;
    bool? isPpoSalaryDisclosed;
    dynamic ppoSalary;
    dynamic ppoSalary2;
    String? ppoLabelValue;
    bool? toShowExtraLabel;
    String? extraLabelValue;
    bool? isExtraLabelBlack;
    List<dynamic>? campaignNames;
    String? campaignName;
    bool? toShowInSearch;
    String? campaignUrl;
    dynamic campaignStartDateTime;
    dynamic campaignLaunchDateTime;
    dynamic campaignEarlyAccessStartDateTime;
    dynamic campaignEndDateTime;
    List<Label>? labels;
    String? labelsApp;
    List<String>? labelsAppInCard;
    bool? isCovidWfhSelected;
    bool? toShowCardMessage;
    String? message;
    bool? isApplicationCappingEnabled;
    String? applicationCappingMessage;
    List<dynamic>? overrideMetaDetails;
    bool? eligibleForEasyApply;
    bool? eligibleForB2BApplyNow;
    bool? toShowB2BLabel;
    bool? isInternationalJob;
    bool? toShowCoverLetter;
    dynamic officeDays;

    The65515({
        this.id,
        this.title,
        this.employmentType,
        this.applicationStatusMessage,
        this.jobTitle,
        this.workFromHome,
        this.segment,
        this.segmentLabelValue,
        this.internshipTypeLabelValue,
        this.jobSegments,
        this.companyName,
        this.companyUrl,
        this.isPremium,
        this.isPremiumInternship,
        this.employerName,
        this.companyLogo,
        this.type,
        this.url,
        this.isInternchallenge,
        this.isExternal,
        this.isActive,
        this.expiresAt,
        this.closedAt,
        this.profileName,
        this.partTime,
        this.startDate,
        this.duration,
        this.stipend,
        this.salary,
        this.jobExperience,
        this.experience,
        this.postedOn,
        this.postedOnDateTime,
        this.applicationDeadline,
        this.expiringIn,
        this.postedByLabel,
        this.postedByLabelType,
        this.locationNames,
        this.locations,
        this.startDateComparisonFormat,
        this.startDate1,
        this.startDate2,
        this.isPpo,
        this.isPpoSalaryDisclosed,
        this.ppoSalary,
        this.ppoSalary2,
        this.ppoLabelValue,
        this.toShowExtraLabel,
        this.extraLabelValue,
        this.isExtraLabelBlack,
        this.campaignNames,
        this.campaignName,
        this.toShowInSearch,
        this.campaignUrl,
        this.campaignStartDateTime,
        this.campaignLaunchDateTime,
        this.campaignEarlyAccessStartDateTime,
        this.campaignEndDateTime,
        this.labels,
        this.labelsApp,
        this.labelsAppInCard,
        this.isCovidWfhSelected,
        this.toShowCardMessage,
        this.message,
        this.isApplicationCappingEnabled,
        this.applicationCappingMessage,
        this.overrideMetaDetails,
        this.eligibleForEasyApply,
        this.eligibleForB2BApplyNow,
        this.toShowB2BLabel,
        this.isInternationalJob,
        this.toShowCoverLetter,
        this.officeDays,
    });

    factory The65515.fromJson(Map<String, dynamic> json) => The65515(
        id: json["id"],
        title: json["title"],
        employmentType: json["employment_type"],
        applicationStatusMessage: json["application_status_message"] == null ? null : ApplicationStatusMessage.fromJson(json["application_status_message"]),
        jobTitle: json["job_title"],
        workFromHome: json["work_from_home"],
        segment: json["segment"],
        segmentLabelValue: json["segment_label_value"],
        internshipTypeLabelValue: json["internship_type_label_value"],
        jobSegments: json["job_segments"] == null ? [] : List<dynamic>.from(json["job_segments"]!.map((x) => x)),
        companyName: json["company_name"],
        companyUrl: json["company_url"],
        isPremium: json["is_premium"],
        isPremiumInternship: json["is_premium_internship"],
        employerName: json["employer_name"],
        companyLogo: json["company_logo"],
        type: json["type"],
        url: json["url"],
        isInternchallenge: json["is_internchallenge"],
        isExternal: json["is_external"],
        isActive: json["is_active"],
        expiresAt: json["expires_at"] == null ? null : DateTime.parse(json["expires_at"]),
        closedAt: json["closed_at"],
        profileName: json["profile_name"],
        partTime: json["part_time"],
        startDate: json["start_date"],
        duration: json["duration"],
        stipend: json["stipend"] == null ? null : Stipend.fromJson(json["stipend"]),
        salary: json["salary"],
        jobExperience: json["job_experience"],
        experience: json["experience"],
        postedOn: json["posted_on"],
        postedOnDateTime: json["postedOnDateTime"],
        applicationDeadline: json["application_deadline"],
        expiringIn: json["expiring_in"],
        postedByLabel: json["posted_by_label"],
        postedByLabelType: json["posted_by_label_type"],
        locationNames: json["location_names"] == null ? [] : List<String>.from(json["location_names"]!.map((x) => x)),
        locations: json["locations"] == null ? [] : List<The65515Location>.from(json["locations"]!.map((x) => The65515Location.fromJson(x))),
        startDateComparisonFormat: json["start_date_comparison_format"] == null ? null : DateTime.parse(json["start_date_comparison_format"]),
        startDate1: json["start_date1"] == null ? null : DateTime.parse(json["start_date1"]),
        startDate2: json["start_date2"] == null ? null : DateTime.parse(json["start_date2"]),
        isPpo: json["is_ppo"],
        isPpoSalaryDisclosed: json["is_ppo_salary_disclosed"],
        ppoSalary: json["ppo_salary"],
        ppoSalary2: json["ppo_salary2"],
        ppoLabelValue: json["ppo_label_value"],
        toShowExtraLabel: json["to_show_extra_label"],
        extraLabelValue: json["extra_label_value"],
        isExtraLabelBlack: json["is_extra_label_black"],
        campaignNames: json["campaign_names"] == null ? [] : List<dynamic>.from(json["campaign_names"]!.map((x) => x)),
        campaignName: json["campaign_name"],
        toShowInSearch: json["to_show_in_search"],
        campaignUrl: json["campaign_url"],
        campaignStartDateTime: json["campaign_start_date_time"],
        campaignLaunchDateTime: json["campaign_launch_date_time"],
        campaignEarlyAccessStartDateTime: json["campaign_early_access_start_date_time"],
        campaignEndDateTime: json["campaign_end_date_time"],
        labels: json["labels"] == null ? [] : List<Label>.from(json["labels"]!.map((x) => Label.fromJson(x))),
        labelsApp: json["labels_app"],
        labelsAppInCard: json["labels_app_in_card"] == null ? [] : List<String>.from(json["labels_app_in_card"]!.map((x) => x)),
        isCovidWfhSelected: json["is_covid_wfh_selected"],
        toShowCardMessage: json["to_show_card_message"],
        message: json["message"],
        isApplicationCappingEnabled: json["is_application_capping_enabled"],
        applicationCappingMessage: json["application_capping_message"],
        overrideMetaDetails: json["override_meta_details"] == null ? [] : List<dynamic>.from(json["override_meta_details"]!.map((x) => x)),
        eligibleForEasyApply: json["eligible_for_easy_apply"],
        eligibleForB2BApplyNow: json["eligible_for_b2b_apply_now"],
        toShowB2BLabel: json["to_show_b2b_label"],
        isInternationalJob: json["is_international_job"],
        toShowCoverLetter: json["to_show_cover_letter"],
        officeDays: json["office_days"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "employment_type": employmentType,
        "application_status_message": applicationStatusMessage?.toJson(),
        "job_title": jobTitle,
        "work_from_home": workFromHome,
        "segment": segment,
        "segment_label_value": segmentLabelValue,
        "internship_type_label_value": internshipTypeLabelValue,
        "job_segments": jobSegments == null ? [] : List<dynamic>.from(jobSegments!.map((x) => x)),
        "company_name": companyName,
        "company_url": companyUrl,
        "is_premium": isPremium,
        "is_premium_internship": isPremiumInternship,
        "employer_name": employerName,
        "company_logo": companyLogo,
        "type": type,
        "url": url,
        "is_internchallenge": isInternchallenge,
        "is_external": isExternal,
        "is_active": isActive,
        "expires_at": "${expiresAt!.year.toString().padLeft(4, '0')}-${expiresAt!.month.toString().padLeft(2, '0')}-${expiresAt!.day.toString().padLeft(2, '0')}",
        "closed_at": closedAt,
        "profile_name": profileName,
        "part_time": partTime,
        "start_date": startDate,
        "duration": duration,
        "stipend": stipend?.toJson(),
        "salary": salary,
        "job_experience": jobExperience,
        "experience": experience,
        "posted_on": postedOn,
        "postedOnDateTime": postedOnDateTime,
        "application_deadline": applicationDeadline,
        "expiring_in": expiringIn,
        "posted_by_label": postedByLabel,
        "posted_by_label_type": postedByLabelType,
        "location_names": locationNames == null ? [] : List<dynamic>.from(locationNames!.map((x) => x)),
        "locations": locations == null ? [] : List<dynamic>.from(locations!.map((x) => x.toJson())),
        "start_date_comparison_format": "${startDateComparisonFormat!.year.toString().padLeft(4, '0')}-${startDateComparisonFormat!.month.toString().padLeft(2, '0')}-${startDateComparisonFormat!.day.toString().padLeft(2, '0')}",
        "start_date1": "${startDate1!.year.toString().padLeft(4, '0')}-${startDate1!.month.toString().padLeft(2, '0')}-${startDate1!.day.toString().padLeft(2, '0')}",
        "start_date2": "${startDate2!.year.toString().padLeft(4, '0')}-${startDate2!.month.toString().padLeft(2, '0')}-${startDate2!.day.toString().padLeft(2, '0')}",
        "is_ppo": isPpo,
        "is_ppo_salary_disclosed": isPpoSalaryDisclosed,
        "ppo_salary": ppoSalary,
        "ppo_salary2": ppoSalary2,
        "ppo_label_value": ppoLabelValue,
        "to_show_extra_label": toShowExtraLabel,
        "extra_label_value": extraLabelValue,
        "is_extra_label_black": isExtraLabelBlack,
        "campaign_names": campaignNames == null ? [] : List<dynamic>.from(campaignNames!.map((x) => x)),
        "campaign_name": campaignName,
        "to_show_in_search": toShowInSearch,
        "campaign_url": campaignUrl,
        "campaign_start_date_time": campaignStartDateTime,
        "campaign_launch_date_time": campaignLaunchDateTime,
        "campaign_early_access_start_date_time": campaignEarlyAccessStartDateTime,
        "campaign_end_date_time": campaignEndDateTime,
        "labels": labels == null ? [] : List<dynamic>.from(labels!.map((x) => x.toJson())),
        "labels_app": labelsApp,
        "labels_app_in_card": labelsAppInCard == null ? [] : List<dynamic>.from(labelsAppInCard!.map((x) => x)),
        "is_covid_wfh_selected": isCovidWfhSelected,
        "to_show_card_message": toShowCardMessage,
        "message": message,
        "is_application_capping_enabled": isApplicationCappingEnabled,
        "application_capping_message": applicationCappingMessage,
        "override_meta_details": overrideMetaDetails == null ? [] : List<dynamic>.from(overrideMetaDetails!.map((x) => x)),
        "eligible_for_easy_apply": eligibleForEasyApply,
        "eligible_for_b2b_apply_now": eligibleForB2BApplyNow,
        "to_show_b2b_label": toShowB2BLabel,
        "is_international_job": isInternationalJob,
        "to_show_cover_letter": toShowCoverLetter,
        "office_days": officeDays,
    };
}

class The65515Location {
    String? string;
    String? link;
    String? country;
    dynamic region;
    String? locationName;

    The65515Location({
        this.string,
        this.link,
        this.country,
        this.region,
        this.locationName,
    });

    factory The65515Location.fromJson(Map<String, dynamic> json) => The65515Location(
        string: json["string"],
        link: json["link"],
        country: json["country"],
        region: json["region"],
        locationName: json["locationName"],
    );

    Map<String, dynamic> toJson() => {
        "string": string,
        "link": link,
        "country": country,
        "region": region,
        "locationName": locationName,
    };
}

class The655 {
    int? id;
    String? title;
    String? employmentType;
    ApplicationStatusMessage? applicationStatusMessage;
    dynamic jobTitle;
    bool? workFromHome;
    String? segment;
    dynamic segmentLabelValue;
    dynamic internshipTypeLabelValue;
    List<dynamic>? jobSegments;
    String? companyName;
    String? companyUrl;
    bool? isPremium;
    bool? isPremiumInternship;
    String? employerName;
    String? companyLogo;
    String? type;
    String? url;
    int? isInternchallenge;
    bool? isExternal;
    bool? isActive;
    DateTime? expiresAt;
    String? closedAt;
    String? profileName;
    bool? partTime;
    String? startDate;
    String? duration;
    Stipend? stipend;
    dynamic salary;
    dynamic jobExperience;
    String? experience;
    String? postedOn;
    int? postedOnDateTime;
    String? applicationDeadline;
    String? expiringIn;
    String? postedByLabel;
    String? postedByLabelType;
    List<String>? locationNames;
    List<The65517Location>? locations;
    DateTime? startDateComparisonFormat;
    DateTime? startDate1;
    DateTime? startDate2;
    bool? isPpo;
    bool? isPpoSalaryDisclosed;
    dynamic ppoSalary;
    dynamic ppoSalary2;
    String? ppoLabelValue;
    bool? toShowExtraLabel;
    String? extraLabelValue;
    bool? isExtraLabelBlack;
    List<dynamic>? campaignNames;
    String? campaignName;
    bool? toShowInSearch;
    String? campaignUrl;
    dynamic campaignStartDateTime;
    dynamic campaignLaunchDateTime;
    dynamic campaignEarlyAccessStartDateTime;
    dynamic campaignEndDateTime;
    List<Label>? labels;
    String? labelsApp;
    List<String>? labelsAppInCard;
    bool? isCovidWfhSelected;
    bool? toShowCardMessage;
    String? message;
    bool? isApplicationCappingEnabled;
    String? applicationCappingMessage;
    List<dynamic>? overrideMetaDetails;
    bool? eligibleForEasyApply;
    bool? eligibleForB2BApplyNow;
    bool? toShowB2BLabel;
    bool? isInternationalJob;
    bool? toShowCoverLetter;
    dynamic officeDays;

    The655({
        this.id,
        this.title,
        this.employmentType,
        this.applicationStatusMessage,
        this.jobTitle,
        this.workFromHome,
        this.segment,
        this.segmentLabelValue,
        this.internshipTypeLabelValue,
        this.jobSegments,
        this.companyName,
        this.companyUrl,
        this.isPremium,
        this.isPremiumInternship,
        this.employerName,
        this.companyLogo,
        this.type,
        this.url,
        this.isInternchallenge,
        this.isExternal,
        this.isActive,
        this.expiresAt,
        this.closedAt,
        this.profileName,
        this.partTime,
        this.startDate,
        this.duration,
        this.stipend,
        this.salary,
        this.jobExperience,
        this.experience,
        this.postedOn,
        this.postedOnDateTime,
        this.applicationDeadline,
        this.expiringIn,
        this.postedByLabel,
        this.postedByLabelType,
        this.locationNames,
        this.locations,
        this.startDateComparisonFormat,
        this.startDate1,
        this.startDate2,
        this.isPpo,
        this.isPpoSalaryDisclosed,
        this.ppoSalary,
        this.ppoSalary2,
        this.ppoLabelValue,
        this.toShowExtraLabel,
        this.extraLabelValue,
        this.isExtraLabelBlack,
        this.campaignNames,
        this.campaignName,
        this.toShowInSearch,
        this.campaignUrl,
        this.campaignStartDateTime,
        this.campaignLaunchDateTime,
        this.campaignEarlyAccessStartDateTime,
        this.campaignEndDateTime,
        this.labels,
        this.labelsApp,
        this.labelsAppInCard,
        this.isCovidWfhSelected,
        this.toShowCardMessage,
        this.message,
        this.isApplicationCappingEnabled,
        this.applicationCappingMessage,
        this.overrideMetaDetails,
        this.eligibleForEasyApply,
        this.eligibleForB2BApplyNow,
        this.toShowB2BLabel,
        this.isInternationalJob,
        this.toShowCoverLetter,
        this.officeDays,
    });

    factory The655.fromJson(Map<String, dynamic> json) => The655(
        id: json["id"],
        title: json["title"],
        employmentType: json["employment_type"],
        applicationStatusMessage: json["application_status_message"] == null ? null : ApplicationStatusMessage.fromJson(json["application_status_message"]),
        jobTitle: json["job_title"],
        workFromHome: json["work_from_home"],
        segment: json["segment"],
        segmentLabelValue: json["segment_label_value"],
        internshipTypeLabelValue: json["internship_type_label_value"],
        jobSegments: json["job_segments"] == null ? [] : List<dynamic>.from(json["job_segments"]!.map((x) => x)),
        companyName: json["company_name"],
        companyUrl: json["company_url"],
        isPremium: json["is_premium"],
        isPremiumInternship: json["is_premium_internship"],
        employerName: json["employer_name"],
        companyLogo: json["company_logo"],
        type: json["type"],
        url: json["url"],
        isInternchallenge: json["is_internchallenge"],
        isExternal: json["is_external"],
        isActive: json["is_active"],
        expiresAt: json["expires_at"] == null ? null : DateTime.parse(json["expires_at"]),
        closedAt: json["closed_at"],
        profileName: json["profile_name"],
        partTime: json["part_time"],
        startDate: json["start_date"],
        duration: json["duration"],
        stipend: json["stipend"] == null ? null : Stipend.fromJson(json["stipend"]),
        salary: json["salary"],
        jobExperience: json["job_experience"],
        experience: json["experience"],
        postedOn: json["posted_on"],
        postedOnDateTime: json["postedOnDateTime"],
        applicationDeadline: json["application_deadline"],
        expiringIn: json["expiring_in"],
        postedByLabel: json["posted_by_label"],
        postedByLabelType: json["posted_by_label_type"],
        locationNames: json["location_names"] == null ? [] : List<String>.from(json["location_names"]!.map((x) => x)),
        locations: json["locations"] == null ? [] : List<The65517Location>.from(json["locations"]!.map((x) => The65517Location.fromJson(x))),
        startDateComparisonFormat: json["start_date_comparison_format"] == null ? null : DateTime.parse(json["start_date_comparison_format"]),
        startDate1: json["start_date1"] == null ? null : DateTime.parse(json["start_date1"]),
        startDate2: json["start_date2"] == null ? null : DateTime.parse(json["start_date2"]),
        isPpo: json["is_ppo"],
        isPpoSalaryDisclosed: json["is_ppo_salary_disclosed"],
        ppoSalary: json["ppo_salary"],
        ppoSalary2: json["ppo_salary2"],
        ppoLabelValue: json["ppo_label_value"],
        toShowExtraLabel: json["to_show_extra_label"],
        extraLabelValue: json["extra_label_value"],
        isExtraLabelBlack: json["is_extra_label_black"],
        campaignNames: json["campaign_names"] == null ? [] : List<dynamic>.from(json["campaign_names"]!.map((x) => x)),
        campaignName: json["campaign_name"],
        toShowInSearch: json["to_show_in_search"],
        campaignUrl: json["campaign_url"],
        campaignStartDateTime: json["campaign_start_date_time"],
        campaignLaunchDateTime: json["campaign_launch_date_time"],
        campaignEarlyAccessStartDateTime: json["campaign_early_access_start_date_time"],
        campaignEndDateTime: json["campaign_end_date_time"],
        labels: json["labels"] == null ? [] : List<Label>.from(json["labels"]!.map((x) => Label.fromJson(x))),
        labelsApp: json["labels_app"],
        labelsAppInCard: json["labels_app_in_card"] == null ? [] : List<String>.from(json["labels_app_in_card"]!.map((x) => x)),
        isCovidWfhSelected: json["is_covid_wfh_selected"],
        toShowCardMessage: json["to_show_card_message"],
        message: json["message"],
        isApplicationCappingEnabled: json["is_application_capping_enabled"],
        applicationCappingMessage: json["application_capping_message"],
        overrideMetaDetails: json["override_meta_details"] == null ? [] : List<dynamic>.from(json["override_meta_details"]!.map((x) => x)),
        eligibleForEasyApply: json["eligible_for_easy_apply"],
        eligibleForB2BApplyNow: json["eligible_for_b2b_apply_now"],
        toShowB2BLabel: json["to_show_b2b_label"],
        isInternationalJob: json["is_international_job"],
        toShowCoverLetter: json["to_show_cover_letter"],
        officeDays: json["office_days"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "employment_type": employmentType,
        "application_status_message": applicationStatusMessage?.toJson(),
        "job_title": jobTitle,
        "work_from_home": workFromHome,
        "segment": segment,
        "segment_label_value": segmentLabelValue,
        "internship_type_label_value": internshipTypeLabelValue,
        "job_segments": jobSegments == null ? [] : List<dynamic>.from(jobSegments!.map((x) => x)),
        "company_name": companyName,
        "company_url": companyUrl,
        "is_premium": isPremium,
        "is_premium_internship": isPremiumInternship,
        "employer_name": employerName,
        "company_logo": companyLogo,
        "type": type,
        "url": url,
        "is_internchallenge": isInternchallenge,
        "is_external": isExternal,
        "is_active": isActive,
        "expires_at": "${expiresAt!.year.toString().padLeft(4, '0')}-${expiresAt!.month.toString().padLeft(2, '0')}-${expiresAt!.day.toString().padLeft(2, '0')}",
        "closed_at": closedAt,
        "profile_name": profileName,
        "part_time": partTime,
        "start_date": startDate,
        "duration": duration,
        "stipend": stipend?.toJson(),
        "salary": salary,
        "job_experience": jobExperience,
        "experience": experience,
        "posted_on": postedOn,
        "postedOnDateTime": postedOnDateTime,
        "application_deadline": applicationDeadline,
        "expiring_in": expiringIn,
        "posted_by_label": postedByLabel,
        "posted_by_label_type": postedByLabelType,
        "location_names": locationNames == null ? [] : List<dynamic>.from(locationNames!.map((x) => x)),
        "locations": locations == null ? [] : List<dynamic>.from(locations!.map((x) => x.toJson())),
        "start_date_comparison_format": "${startDateComparisonFormat!.year.toString().padLeft(4, '0')}-${startDateComparisonFormat!.month.toString().padLeft(2, '0')}-${startDateComparisonFormat!.day.toString().padLeft(2, '0')}",
        "start_date1": "${startDate1!.year.toString().padLeft(4, '0')}-${startDate1!.month.toString().padLeft(2, '0')}-${startDate1!.day.toString().padLeft(2, '0')}",
        "start_date2": "${startDate2!.year.toString().padLeft(4, '0')}-${startDate2!.month.toString().padLeft(2, '0')}-${startDate2!.day.toString().padLeft(2, '0')}",
        "is_ppo": isPpo,
        "is_ppo_salary_disclosed": isPpoSalaryDisclosed,
        "ppo_salary": ppoSalary,
        "ppo_salary2": ppoSalary2,
        "ppo_label_value": ppoLabelValue,
        "to_show_extra_label": toShowExtraLabel,
        "extra_label_value": extraLabelValue,
        "is_extra_label_black": isExtraLabelBlack,
        "campaign_names": campaignNames == null ? [] : List<dynamic>.from(campaignNames!.map((x) => x)),
        "campaign_name": campaignName,
        "to_show_in_search": toShowInSearch,
        "campaign_url": campaignUrl,
        "campaign_start_date_time": campaignStartDateTime,
        "campaign_launch_date_time": campaignLaunchDateTime,
        "campaign_early_access_start_date_time": campaignEarlyAccessStartDateTime,
        "campaign_end_date_time": campaignEndDateTime,
        "labels": labels == null ? [] : List<dynamic>.from(labels!.map((x) => x.toJson())),
        "labels_app": labelsApp,
        "labels_app_in_card": labelsAppInCard == null ? [] : List<dynamic>.from(labelsAppInCard!.map((x) => x)),
        "is_covid_wfh_selected": isCovidWfhSelected,
        "to_show_card_message": toShowCardMessage,
        "message": message,
        "is_application_capping_enabled": isApplicationCappingEnabled,
        "application_capping_message": applicationCappingMessage,
        "override_meta_details": overrideMetaDetails == null ? [] : List<dynamic>.from(overrideMetaDetails!.map((x) => x)),
        "eligible_for_easy_apply": eligibleForEasyApply,
        "eligible_for_b2b_apply_now": eligibleForB2BApplyNow,
        "to_show_b2b_label": toShowB2BLabel,
        "is_international_job": isInternationalJob,
        "to_show_cover_letter": toShowCoverLetter,
        "office_days": officeDays,
    };
}

class The65517Location {
    String? string;
    String? link;
    String? country;
    String? region;
    String? locationName;

    The65517Location({
        this.string,
        this.link,
        this.country,
        this.region,
        this.locationName,
    });

    factory The65517Location.fromJson(Map<String, dynamic> json) => The65517Location(
        string: json["string"],
        link: json["link"],
        country: json["country"],
        region: json["region"],
        locationName: json["locationName"],
    );

    Map<String, dynamic> toJson() => {
        "string": string,
        "link": link,
        "country": country,
        "region": region,
        "locationName": locationName,
    };
}
