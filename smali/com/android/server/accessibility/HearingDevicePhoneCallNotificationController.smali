.class public Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field public final mTelephonyListener:Landroid/telephony/TelephonyCallback;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    invoke-direct {v1, p1, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mTelephonyListener:Landroid/telephony/TelephonyCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mTelephonyListener:Landroid/telephony/TelephonyCallback;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
