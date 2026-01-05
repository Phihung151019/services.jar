.class public final Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final appPid:I

.field public final appUid:I

.field public final jobEndNotificationPolicy:I

.field public final notificationChannel:Ljava/lang/String;

.field public final notificationId:I

.field public final userPackage:Landroid/content/pm/UserPackage;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserPackage;IIILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    iput p4, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    iput-object p5, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationChannel:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appPid:I

    iput p3, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    iput p6, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->jobEndNotificationPolicy:I

    return-void
.end method
