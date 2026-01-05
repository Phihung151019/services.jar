.class public final Lcom/android/server/am/AppRestrictionController$Injector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

.field public mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

.field public mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

.field public mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

.field public mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

.field public mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

.field public mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public mAppStateTracker:Lcom/android/server/AppStateTracker;

.field public final mContext:Landroid/content/Context;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    return-object p0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public final getRoleManager()Landroid/app/role/RoleManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    return-object p0
.end method

.method public final getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method
