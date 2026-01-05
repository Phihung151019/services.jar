.class public final Lcom/android/server/am/ServiceRecord$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$localForegroundId:I

.field public final synthetic val$localPackageName:Ljava/lang/String;

.field public final synthetic val$localUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$4;->val$localPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/ServiceRecord$4;->val$localForegroundId:I

    iput p3, p0, Lcom/android/server/am/ServiceRecord$4;->val$localUserId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$4;->val$localPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ServiceRecord$4;->val$localForegroundId:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord$4;->val$localUserId:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/notification/NotificationManagerInternal;->removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V

    return-void
.end method
