.class public final Lcom/android/server/am/AppRestrictionController$NotificationHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NOTIFICATION_TIME_ATTRS:[Ljava/lang/String;

.field public static final NOTIFICATION_TYPE_STRINGS:[Ljava/lang/String;


# instance fields
.field public final mActionButtonReceiver:Lcom/android/server/am/AppRestrictionController$1;

.field public final mBgController:Lcom/android/server/am/AppRestrictionController;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mNotificationIDStepper:I

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mSettingsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Abusive current drain"

    const-string/jumbo v1, "Long-running FGS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TYPE_STRINGS:[Ljava/lang/String;

    const-string/jumbo v0, "last_batt_noti_ts"

    const-string/jumbo v1, "last_long_fgs_noti_ts"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TIME_ATTRS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/AppRestrictionController$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/AppRestrictionController$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mActionButtonReceiver:Lcom/android/server/am/AppRestrictionController$1;

    const v0, 0xc1b2509

    iput v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v0, p1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p1, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mLock:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    iget-object p1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final cancelRequestBgRestrictedIfNecessary(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    aget p2, p1, p2

    :goto_0
    if-lez p2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
