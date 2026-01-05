.class public final Lcom/android/server/devicepolicy/ActiveAdmin;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEF_ORGANIZATION_COLOR:I


# instance fields
.field public final accountTypesWithManagementDisabled:Ljava/util/Set;

.field public allowBluetoothMode:I

.field public allowBrowser:Z

.field public allowDesktopSync:Z

.field public allowInternetSharing:Z

.field public allowIrDA:Z

.field public allowPOPIMAPEmail:Z

.field public allowStorageCard:Z

.field public allowTextMessaging:Z

.field public allowWifi:Z

.field public crossProfileWidgetProviders:Ljava/util/List;

.field public final defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

.field public disableBluetoothContactSharing:Z

.field public disableCallerId:Z

.field public disableCamera:Z

.field public disableContactsSearch:Z

.field public disableScreenCapture:Z

.field public disabledKeyguardFeatures:I

.field public encryptionRequested:Z

.field public endUserSessionMessage:Ljava/lang/String;

.field public forceEphemeralUsers:Z

.field public globalProxyExclusionList:Ljava/lang/String;

.field public globalProxySpec:Ljava/lang/String;

.field public info:Landroid/app/admin/DeviceAdminInfo;

.field public isLogoutEnabled:Z

.field public isNetworkLoggingEnabled:Z

.field public final isParent:Z

.field public keepUninstalledPackages:Ljava/util/List;

.field public lastNetworkLoggingNotificationTimeMs:J

.field public longSupportMessage:Ljava/lang/CharSequence;

.field public mAdminCanGrantSensorsPermissions:Z

.field public mAlwaysOnVpnLockdown:Z

.field public mAlwaysOnVpnPackage:Ljava/lang/String;

.field public mCommonCriteriaMode:Z

.field public mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

.field public mCrossProfileCalendarPackages:Ljava/util/List;

.field public mCrossProfilePackages:Ljava/util/List;

.field public mDialerPackage:Ljava/lang/String;

.field public mEnrollmentSpecificId:Ljava/lang/String;

.field public mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

.field public mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

.field public mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

.field public mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

.field public mNearbyAppStreamingPolicy:I

.field public mNearbyNotificationStreamingPolicy:I

.field public mOrganizationId:Ljava/lang/String;

.field public mPasswordComplexity:I

.field public mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

.field public mPreferentialNetworkServiceConfigs:Ljava/util/List;

.field public mProfileMaximumTimeOffMillis:J

.field public mProfileOffDeadline:J

.field public mProvisioningContext:Ljava/lang/String;

.field public mSmsPackage:Ljava/lang/String;

.field public mSuspendPersonalApps:Z

.field public mUsbDataSignalingEnabled:Z

.field public mWifiMinimumSecurityLevel:I

.field public mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

.field public maximumFailedPasswordsForWipe:I

.field public maximumTimeToUnlock:J

.field public meteredDisabledPackages:Ljava/util/List;

.field public mtePolicy:I

.field public numNetworkLoggingNotifications:I

.field public organizationColor:I

.field public organizationName:Ljava/lang/String;

.field public parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

.field public passwordExpirationDate:J

.field public passwordExpirationTimeout:J

.field public passwordHistoryLength:I

.field public passwordRecoverable:Z

.field public permittedAccessiblityServices:Ljava/util/List;

.field public permittedInputMethods:Ljava/util/List;

.field public permittedNotificationListeners:Ljava/util/List;

.field public protectedPackages:Ljava/util/List;

.field public requireAutoTime:Z

.field public requireStorageCardEncryption:Z

.field public shortSupportMessage:Ljava/lang/CharSequence;

.field public simplePasswordEnabled:Z

.field public specifiesGlobalProxy:Z

.field public startUserSessionMessage:Ljava/lang/String;

.field public strongAuthUnlockTimeout:J

.field public suspendedPackages:Ljava/util/List;

.field public testOnlyAdmin:Z

.field public trustAgentInfos:Landroid/util/ArrayMap;

.field public userRestrictions:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#00796B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/app/admin/DeviceAdminInfo;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    new-instance v1, Landroid/app/admin/PasswordPolicy;

    invoke-direct {v1}, Landroid/app/admin/PasswordPolicy;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordRecoverable:Z

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    const/4 v5, 0x2

    iput v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    sget v5, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    iput v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    sget-object v1, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    return-void
.end method

.method public static dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ":"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p1, "policyType="

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/admin/PackagePolicy;->getPolicyType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo p1, "packageNames:"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p2}, Landroid/app/admin/PackagePolicy;->getPackageNames()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda2;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    return-void
.end method

.method public static readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DevicePolicyManager"

    const-string v3, "Expected tag %s but found %s"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "item"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "DevicePolicyManager"

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    const-string/jumbo v5, "value"

    invoke-interface {p0, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "Package name missing under %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "Unknown tag under %s: "

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "package-policy-type"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/util/ArraySet;

    const-string/jumbo v2, "package-policy-packages"

    invoke-static {p0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance p0, Landroid/app/admin/PackagePolicy;

    invoke-direct {p0, v0, v1}, Landroid/app/admin/PackagePolicy;-><init>(ILjava/util/Set;)V

    return-object p0
.end method

.method public static writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "value"

    invoke-interface {p0, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "item"

    invoke-static {p2, p1, v0, p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public static writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "package-policy-type"

    invoke-virtual {p2}, Landroid/app/admin/PackagePolicy;->getPolicyType()I

    move-result v2

    invoke-interface {p0, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/app/admin/PackagePolicy;->getPackageNames()Ljava/util/Set;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo p2, "item"

    const-string/jumbo v2, "package-policy-packages"

    invoke-static {p0, v2, p2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "testOnlyAdmin="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "policies:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    const-string/jumbo v0, "passwordQuality=0x"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->quality:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "minimumPasswordLength="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->length:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "passwordHistoryLength="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordUpperCase="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordLowerCase="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordLetters="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->letters:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordNumeric="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->numeric:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordSymbols="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->symbols:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "minimumPasswordNonLetter="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "maximumTimeToUnlock="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v0, "strongAuthUnlockTimeout="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v0, "maximumFailedPasswordsForWipe="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "specifiesGlobalProxy="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "passwordExpirationTimeout="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v0, "passwordExpirationDate="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "globalProxySpec="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "globalProxyEclusionList="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "encryptionRequested="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "disableCallerId="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "disableContactsSearch="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "disableBluetoothContactSharing="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "forceEphemeralUsers="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "isNetworkLoggingEnabled="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "disabledKeyguardFeatures="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "crossProfileWidgetProviders="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "permittedAccessibilityServices="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "permittedNotificationListeners="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "keepUninstalledPackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "meteredDisabledPackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "protectedPackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "suspendedPackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    const-string/jumbo v0, "organizationColor="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string/jumbo v0, "organizationName="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    const-string/jumbo v0, "defaultEnabledRestrictionsAlreadySet="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "managedProfileCallerIdPolicy"

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    const-string/jumbo v0, "managedProfileContactsPolicy"

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    const-string/jumbo v0, "credentialManagerPolicy"

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    const-string/jumbo v0, "isParent="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v0, :cond_b

    const-string/jumbo v0, "parentAdmin:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_b
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-eqz v0, :cond_c

    const-string/jumbo v0, "mCrossProfileCalendarPackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    const-string/jumbo v0, "mCrossProfilePackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "mSuspendPersonalApps="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mProfileMaximumTimeOffMillis="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v0, "mProfileOffDeadline="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v0, "mAlwaysOnVpnPackage="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mAlwaysOnVpnLockdown="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mCommonCriteriaMode="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mPasswordComplexity="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "mNearbyNotificationStreamingPolicy="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "mNearbyAppStreamingPolicy="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "mOrganizationId="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "mEnrollmentSpecificId="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    const-string/jumbo v0, "mAdminCanGrantSensorsPermissions="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mWifiMinimumSecurityLevel="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "mSsidAllowlist="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    const-string/jumbo v0, "mSsidDenylist="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    if-eqz v0, :cond_11

    const-string/jumbo v0, "mFactoryResetProtectionPolicy:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-virtual {v0, p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_11
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    if-eqz v0, :cond_13

    const-string/jumbo v0, "mPreferentialNetworkServiceConfigs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PreferentialNetworkServiceConfig;

    invoke-virtual {v1, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_2

    :cond_12
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_13
    const-string/jumbo v0, "mtePolicy="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "accountTypesWithManagementDisabled="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    if-eqz v0, :cond_14

    const-string/jumbo v0, "mManagedSubscriptionsPolicy:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_14
    const-string/jumbo v0, "mDialerPackage="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mSmsPackage="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mProvisioningContext="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProvisioningContext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    if-eqz v0, :cond_15

    const-string v0, "DeviceAdminInfo:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DeviceAdminInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_15
    const-string/jumbo v0, "eas it policies:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "simplePasswordEnabled="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "allowStorageCard="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "allowWifi="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "allowTextMessaging="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "allowPOPIMAPEmail="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "allowBrowser="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "allowInternetSharing="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "allowBluetoothMode="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "allowDesktopSync="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "allowIrDA="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "requireStorageCardEncryption="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final ensureUserRestrictions()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/devicepolicy/ActiveAdmin;

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    return-object p0
.end method

.method public final getUid()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public final getUserHandle()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public final readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_74

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_74

    :cond_1
    if-eq v4, v6, :cond_0

    const/4 v7, 0x4

    if-ne v4, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "policies"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "DevicePolicyManager"

    if-eqz v8, :cond_3

    if-eqz v2, :cond_0

    const-string/jumbo v4, "Overriding device admin policies from XML."

    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, v1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "password-quality"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string/jumbo v10, "value"

    const/4 v11, 0x0

    if-eqz v8, :cond_4

    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/app/admin/PasswordPolicy;->quality:I

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "min-password-length"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/app/admin/PasswordPolicy;->length:I

    goto :goto_0

    :cond_5
    const-string/jumbo v8, "password-history-length"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    goto :goto_0

    :cond_6
    const-string/jumbo v8, "min-password-uppercase"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/app/admin/PasswordPolicy;->upperCase:I

    goto :goto_0

    :cond_7
    const-string/jumbo v8, "min-password-lowercase"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v8, "min-password-letters"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/app/admin/PasswordPolicy;->letters:I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v8, "min-password-numeric"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/app/admin/PasswordPolicy;->numeric:I

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v8, "min-password-symbols"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/app/admin/PasswordPolicy;->symbols:I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v8, "min-password-nonletter"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v8, "max-time-to-unlock"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v8, "strong-auth-unlock-timeout"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v8, "max-failed-password-wipe"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v8, "specifies-global-proxy"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v12, 0x0

    if-eqz v8, :cond_10

    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v8, "global-proxy-spec"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v8, "global-proxy-exclusion-list"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v8, "password-expiration-timeout"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v8, "password-expiration-date"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v8, "encryption-requested"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v8, "test-only-admin"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v8, "disable-camera"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v8, "disable-caller-id"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v8, "disable-contacts-search"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v8, "disable-bt-contacts-sharing"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v8, "disable-screen-capture"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v8, "require_auto_time"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v8, "force_ephemeral_users"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v8, "is_network_logging_enabled"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    const-string/jumbo v4, "last-notification"

    invoke-interface {v1, v11, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    const-string/jumbo v4, "num-notifications"

    invoke-interface {v1, v11, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v8, "disable-keyguard-features"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v8, "disable-account-management"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string/jumbo v5, "account-type"

    invoke-static {v1, v5, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v8, "manage-trust-agent-features"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string/jumbo v13, "Unknown tag under %s: %s"

    if-eqz v8, :cond_2b

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    :cond_21
    :goto_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v14

    if-eq v14, v5, :cond_2a

    if-ne v14, v6, :cond_22

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v8, :cond_2a

    :cond_22
    if-eq v14, v6, :cond_21

    if-ne v14, v7, :cond_23

    goto :goto_1

    :cond_23
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "component"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_29

    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v15

    new-instance v7, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    invoke-direct {v7, v11}, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    :goto_2
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v11

    move/from16 v16, v5

    if-eq v11, v5, :cond_28

    if-ne v11, v6, :cond_24

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v15, :cond_28

    :cond_24
    if-eq v11, v6, :cond_25

    const/4 v5, 0x4

    if-ne v11, v5, :cond_26

    :cond_25
    :goto_3
    move/from16 v5, v16

    goto :goto_2

    :cond_26
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "trust-agent-component-options"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-static {v1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    iput-object v5, v7, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    goto :goto_3

    :cond_27
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v13, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_28
    invoke-virtual {v12, v14, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_29
    move/from16 v16, v5

    filled-new-array {v4, v14}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v13, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    move/from16 v5, v16

    const/4 v7, 0x4

    const/4 v11, 0x0

    goto :goto_1

    :cond_2a
    iput-object v12, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    goto/16 :goto_0

    :cond_2b
    move/from16 v16, v5

    const-string/jumbo v5, "cross-profile-widget-providers"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    const-string/jumbo v5, "provider"

    invoke-static {v1, v5, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_2c
    const-string/jumbo v5, "permitted-accessiblity-services"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    goto/16 :goto_0

    :cond_2d
    const-string/jumbo v5, "permitted-imes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    goto/16 :goto_0

    :cond_2e
    const-string/jumbo v5, "permitted-notification-listeners"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    goto/16 :goto_0

    :cond_2f
    const-string/jumbo v5, "keep-uninstalled-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    goto/16 :goto_0

    :cond_30
    const-string/jumbo v5, "metered_data_disabled_packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    goto/16 :goto_0

    :cond_31
    const-string/jumbo v5, "protected_packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    goto/16 :goto_0

    :cond_32
    const-string/jumbo v5, "suspended-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    goto/16 :goto_0

    :cond_33
    const-string/jumbo v5, "user-restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    goto/16 :goto_0

    :cond_34
    const-string/jumbo v5, "default-enabled-user-restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string/jumbo v5, "restriction"

    invoke-static {v1, v5, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_35
    const-string/jumbo v5, "short-support-message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_36

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_36
    const-string/jumbo v4, "Missing text when loading short support message"

    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_37
    const/4 v5, 0x4

    const-string/jumbo v7, "long-support-message"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    if-ne v4, v5, :cond_38

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_38
    const-string/jumbo v4, "Missing text when loading long support message"

    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_39
    const-string/jumbo v5, "parent-admin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v4, Lcom/android/server/devicepolicy/ActiveAdmin;

    iget-object v5, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move/from16 v6, v16

    invoke-direct {v4, v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    goto/16 :goto_0

    :cond_3a
    const-string/jumbo v5, "organization-color"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v5, 0x0

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    goto/16 :goto_0

    :cond_3b
    const-string/jumbo v5, "organization-name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3c

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3c
    const-string/jumbo v4, "Missing text when loading organization name"

    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3d
    const-string/jumbo v5, "is_logout_enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v5, 0x0

    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    goto/16 :goto_0

    :cond_3e
    const-string/jumbo v5, "start_user_session_message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3f

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3f
    const-string/jumbo v4, "Missing text when loading start session message"

    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_40
    const/4 v5, 0x4

    const-string/jumbo v7, "end_user_session_message"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    if-ne v4, v5, :cond_41

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_0

    :cond_41
    const-string/jumbo v4, "Missing text when loading end session message"

    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_42
    const-string/jumbo v5, "cross-profile-calendar-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_0

    :cond_43
    const-string/jumbo v5, "cross-profile-calendar-packages-null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_0

    :cond_44
    const-string/jumbo v5, "cross-profile-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    goto/16 :goto_0

    :cond_45
    const-string/jumbo v5, "factory_reset_protection_policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-static {v1}, Landroid/app/admin/FactoryResetProtectionPolicy;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    goto/16 :goto_0

    :cond_46
    const-string/jumbo v5, "suspend-personal-apps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v5, 0x0

    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    goto/16 :goto_0

    :cond_47
    const/4 v5, 0x0

    const-string/jumbo v7, "profile-max-time-off"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    goto/16 :goto_0

    :cond_48
    const-string/jumbo v7, "profile-off-deadline"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    goto/16 :goto_0

    :cond_49
    const-string/jumbo v7, "vpn-package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4a
    const-string/jumbo v7, "vpn-lockdown"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    goto/16 :goto_0

    :cond_4b
    const-string/jumbo v7, "preferential-network-service-enabled"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-virtual {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v4

    invoke-static {v4}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    goto/16 :goto_0

    :cond_4c
    const-string/jumbo v5, "common-criteria-mode"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const/4 v5, 0x0

    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    goto/16 :goto_0

    :cond_4d
    const/4 v5, 0x0

    const-string/jumbo v7, "password-complexity"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    goto/16 :goto_0

    :cond_4e
    const-string/jumbo v7, "nearby-notification-streaming-policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    goto/16 :goto_0

    :cond_4f
    const-string/jumbo v7, "nearby-app-streaming-policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    goto/16 :goto_0

    :cond_50
    const-string/jumbo v5, "organization-id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_51

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_51
    const-string/jumbo v4, "Missing Organization ID."

    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_52
    const/4 v5, 0x4

    const-string/jumbo v7, "enrollment-specific-id"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    if-ne v4, v5, :cond_53

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_53
    const-string/jumbo v4, "Missing Enrollment-specific ID."

    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_54
    const-string/jumbo v5, "admin-can-grant-sensors-permissions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    const/4 v5, 0x0

    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    goto/16 :goto_0

    :cond_55
    const/4 v5, 0x0

    const-string/jumbo v7, "usb-data-signaling"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    const/4 v7, 0x1

    invoke-interface {v1, v5, v10, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    goto/16 :goto_0

    :cond_56
    const-string/jumbo v7, "wifi-min-security"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    goto/16 :goto_0

    :cond_57
    const-string/jumbo v5, "ssid-allowlist"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v7, "ssid"

    if-eqz v5, :cond_58

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v7, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Landroid/app/admin/WifiSsidPolicy;

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v12, v6}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    iput-object v5, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    goto/16 :goto_0

    :cond_58
    const-string/jumbo v5, "ssid-denylist"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v7, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Landroid/app/admin/WifiSsidPolicy;

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x1

    invoke-direct {v5, v7, v6}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    iput-object v5, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    goto/16 :goto_0

    :cond_59
    const/4 v7, 0x1

    const-string/jumbo v5, "preferential_network_service_configs"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v10

    if-eq v10, v7, :cond_5e

    if-ne v10, v6, :cond_5a

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v5, :cond_5e

    :cond_5a
    if-eq v10, v6, :cond_5b

    const/4 v7, 0x4

    if-ne v10, v7, :cond_5c

    :cond_5b
    :goto_6
    const/4 v7, 0x1

    goto :goto_5

    :cond_5c
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "preferential_network_service_config"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-static {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getPreferentialNetworkServiceConfig(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5d
    filled-new-array {v4, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v13, v10}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_5e
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iput-object v8, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    goto/16 :goto_0

    :cond_5f
    const-string/jumbo v5, "mte-policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    const/4 v5, 0x0

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    goto/16 :goto_0

    :cond_60
    const-string/jumbo v5, "caller-id-policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-static {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    goto/16 :goto_0

    :cond_61
    const-string/jumbo v5, "contacts-policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-static {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    goto/16 :goto_0

    :cond_62
    const-string/jumbo v5, "managed_subscriptions_policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-static {v1}, Landroid/app/admin/ManagedSubscriptionsPolicy;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    goto/16 :goto_0

    :cond_63
    const-string/jumbo v5, "credential-manager-policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-static {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    goto/16 :goto_0

    :cond_64
    const-string/jumbo v5, "dialer_package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    const/4 v5, 0x0

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    goto/16 :goto_0

    :cond_65
    const/4 v5, 0x0

    const-string/jumbo v6, "sms_package"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    goto/16 :goto_0

    :cond_66
    const-string/jumbo v6, "provisioning-context"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProvisioningContext:Ljava/lang/String;

    goto/16 :goto_0

    :cond_67
    const-string/jumbo v6, "password-recoverable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordRecoverable:Z

    goto/16 :goto_0

    :cond_68
    const-string/jumbo v6, "simplepassword-enabled"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v6, 0x1

    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    goto/16 :goto_0

    :cond_69
    const/4 v6, 0x1

    const-string/jumbo v7, "allow-storage-card"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    goto/16 :goto_0

    :cond_6a
    const-string/jumbo v7, "allow-wifi"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    goto/16 :goto_0

    :cond_6b
    const-string/jumbo v7, "allow-text-messaging"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    goto/16 :goto_0

    :cond_6c
    const-string/jumbo v7, "allow-popimap-email"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    goto/16 :goto_0

    :cond_6d
    const-string/jumbo v7, "allow-browser"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    goto/16 :goto_0

    :cond_6e
    const-string/jumbo v7, "allow-internet-sharing"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    goto/16 :goto_0

    :cond_6f
    const-string/jumbo v6, "allow-bluetooth-mode"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/4 v4, 0x2

    invoke-interface {v1, v5, v10, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    goto/16 :goto_0

    :cond_70
    const-string/jumbo v6, "allow-Desktop-Sync"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    const/4 v6, 0x1

    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    goto/16 :goto_0

    :cond_71
    const/4 v6, 0x1

    const-string/jumbo v7, "allow-IrDA"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    goto/16 :goto_0

    :cond_72
    const-string/jumbo v6, "require-StorageCard-Encryption"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    goto/16 :goto_0

    :cond_73
    const-string/jumbo v5, "Unknown admin tag: %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v5, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_74
    return-void
.end method

.method public final writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "policies"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const-string/jumbo v3, "password-quality"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->length:I

    if-eqz v0, :cond_1

    const-string/jumbo v3, "min-password-length"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    if-eqz v0, :cond_2

    const-string/jumbo v3, "min-password-uppercase"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    if-eqz v0, :cond_3

    const-string/jumbo v3, "min-password-lowercase"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->letters:I

    if-eq v0, v2, :cond_4

    const-string/jumbo v3, "min-password-letters"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->numeric:I

    if-eq v0, v2, :cond_5

    const-string/jumbo v3, "min-password-numeric"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->symbols:I

    if-eq v0, v2, :cond_6

    const-string/jumbo v3, "min-password-symbols"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    if-lez v0, :cond_7

    const-string/jumbo v3, "min-password-nonletter"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_7
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    if-eqz v0, :cond_8

    const-string/jumbo v3, "password-history-length"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_8
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_9

    const-string/jumbo v0, "max-time-to-unlock"

    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_9
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    const-wide/32 v7, 0xf731400

    cmp-long v0, v3, v7

    if-eqz v0, :cond_a

    const-string/jumbo v0, "strong-auth-unlock-timeout"

    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_a
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v0, :cond_b

    const-string/jumbo v3, "max-failed-password-wipe"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v0, :cond_d

    const-string/jumbo v3, "specifies-global-proxy"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string/jumbo v3, "global-proxy-spec"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string/jumbo v3, "global-proxy-exclusion-list"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_e

    const-string/jumbo v0, "password-expiration-timeout"

    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_e
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_f

    const-string/jumbo v0, "password-expiration-date"

    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_f
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    if-eqz v0, :cond_10

    const-string/jumbo v3, "encryption-requested"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_10
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    if-eqz v0, :cond_11

    const-string/jumbo v3, "test-only-admin"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_11
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    if-eqz v0, :cond_12

    const-string/jumbo v3, "disable-camera"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_12
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    if-eqz v0, :cond_13

    const-string/jumbo v3, "disable-caller-id"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_13
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    if-eqz v0, :cond_14

    const-string/jumbo v3, "disable-contacts-search"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_14
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    if-nez v0, :cond_15

    const-string/jumbo v3, "disable-bt-contacts-sharing"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_15
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    if-eqz v0, :cond_16

    const-string/jumbo v3, "disable-screen-capture"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_16
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    if-eqz v0, :cond_17

    const-string/jumbo v3, "require_auto_time"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_17
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    if-eqz v0, :cond_18

    const-string/jumbo v3, "force_ephemeral_users"

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_18
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    const-string/jumbo v3, "value"

    if-eqz v0, :cond_19

    const-string/jumbo v0, "is_network_logging_enabled"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "num-notifications"

    iget v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    invoke-interface {p1, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "last-notification"

    iget-wide v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    invoke-interface {p1, v1, v4, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_19
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    if-eqz v0, :cond_1a

    const-string/jumbo v4, "disable-keyguard-features"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_1a
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string/jumbo v4, "disable-account-management"

    const-string/jumbo v7, "account-type"

    invoke-static {p1, v4, v7, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v4, "manage-trust-agent-features"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    const-string/jumbo v9, "component"

    invoke-interface {p1, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p1, v1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    if-eqz v7, :cond_1c

    const-string/jumbo v7, "trust-agent-component-options"

    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :try_start_0
    iget-object v8, v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    invoke-virtual {v8, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "DevicePolicyManager"

    const-string v12, "Failed to save TrustAgent options"

    invoke-static {v11, v8, v12, v10}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1c
    invoke-interface {p1, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_1d
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1e
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v0, :cond_1f

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    const-string/jumbo v4, "cross-profile-widget-providers"

    const-string/jumbo v7, "provider"

    invoke-static {p1, v4, v7, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_1f
    const-string/jumbo v0, "permitted-accessiblity-services"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-static {v4, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    const-string/jumbo v4, "permitted-imes"

    invoke-static {v0, v4, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "permitted-notification-listeners"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    invoke-static {v4, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "keep-uninstalled-packages"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    invoke-static {v4, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "metered_data_disabled_packages"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    invoke-static {v4, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    const-string/jumbo v4, "protected_packages"

    invoke-static {v0, v4, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "suspended-packages"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    invoke-static {v4, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string/jumbo v4, "user-restrictions"

    invoke-static {p1, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string/jumbo v4, "default-enabled-user-restrictions"

    const-string/jumbo v7, "restriction"

    invoke-static {p1, v4, v7, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_21
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "short-support-message"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "long-support-message"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v0, :cond_24

    const-string/jumbo v0, "parent-admin"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v4, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_24
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    sget v4, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    if-eq v0, v4, :cond_25

    const-string/jumbo v4, "organization-color"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_25
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v0, :cond_26

    const-string/jumbo v4, "organization-name"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    if-eqz v0, :cond_27

    const-string/jumbo v4, "is_logout_enabled"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_27
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_28

    const-string/jumbo v4, "start_user_session_message"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_29

    const-string/jumbo v4, "end_user_session_message"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-nez v0, :cond_2a

    const-string/jumbo v0, "cross-profile-calendar-packages-null"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_2a
    const-string/jumbo v4, "item"

    const-string/jumbo v7, "cross-profile-calendar-packages"

    invoke-static {p1, v7, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :goto_2
    const-string/jumbo v0, "cross-profile-packages"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    invoke-static {v4, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "factory_reset_protection_policy"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-virtual {v4, p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    if-eqz v0, :cond_2c

    const-string/jumbo v4, "suspend-personal-apps"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_2c
    iget-wide v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "profile-max-time-off"

    invoke-static {p1, v0, v7, v8}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_2d
    iget-wide v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "profile-off-deadline"

    iget-wide v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    invoke-static {p1, v0, v4, v5}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_2e
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "vpn-package"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    if-eqz v0, :cond_30

    const-string/jumbo v4, "vpn-lockdown"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_30
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    if-eqz v0, :cond_31

    const-string/jumbo v4, "common-criteria-mode"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_31
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    if-eqz v0, :cond_32

    const-string/jumbo v4, "password-complexity"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_32
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_33

    const-string/jumbo v5, "nearby-notification-streaming-policy"

    invoke-static {p1, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_33
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    if-eq v0, v4, :cond_34

    const-string/jumbo v4, "nearby-app-streaming-policy"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_34
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "organization-id"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string/jumbo v0, "enrollment-specific-id"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    const-string/jumbo v0, "admin-can-grant-sensors-permissions"

    iget-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    invoke-static {p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    if-eq v0, v2, :cond_37

    const-string/jumbo v4, "usb-data-signaling"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_37
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    if-eqz v0, :cond_38

    const-string/jumbo v4, "wifi-min-security"

    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_38
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v4}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v4

    const-string/jumbo v5, "ssid"

    if-nez v4, :cond_39

    const-string/jumbo v2, "ssid-allowlist"

    invoke-static {p1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_3

    :cond_39
    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v4}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v4

    if-ne v4, v2, :cond_3a

    const-string/jumbo v2, "ssid-denylist"

    invoke-static {p1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_3a
    :goto_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    const-string/jumbo v0, "preferential_network_service_configs"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/PreferentialNetworkServiceConfig;

    invoke-virtual {v4, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_4

    :cond_3b
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3c
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    if-eqz v0, :cond_3d

    const-string/jumbo v2, "mte-policy"

    invoke-static {p1, v2, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_3d
    const-string/jumbo v0, "caller-id-policy"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    invoke-static {p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    const-string/jumbo v0, "contacts-policy"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    invoke-static {p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    const-string/jumbo v0, "credential-manager-policy"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    invoke-static {p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "managed_subscriptions_policy"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    invoke-virtual {v2, p1}, Landroid/app/admin/ManagedSubscriptionsPolicy;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3e
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string/jumbo v0, "dialer_package"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string/jumbo v0, "sms_package"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProvisioningContext:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string/jumbo v0, "provisioning-context"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProvisioningContext:Ljava/lang/String;

    invoke-interface {p1, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_41
    const-string/jumbo v0, "password-recoverable"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordRecoverable:Z

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "simplepassword-enabled"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "allow-storage-card"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "allow-wifi"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "allow-text-messaging"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "allow-popimap-email"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "allow-browser"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "allow-internet-sharing"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "allow-bluetooth-mode"

    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v0, "allow-Desktop-Sync"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "allow-IrDA"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "require-StorageCard-Encryption"

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    invoke-static {p1, v0, p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    return-void
.end method
