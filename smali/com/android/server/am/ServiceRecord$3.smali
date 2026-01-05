.class public final Lcom/android/server/am/ServiceRecord$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$appPid:I

.field public final synthetic val$appUid:I

.field public final synthetic val$localForegroundId:I

.field public final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$3;->val$appUid:I

    iput p4, p0, Lcom/android/server/am/ServiceRecord$3;->val$appPid:I

    iput p5, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ServiceRecord$3;->val$appUid:I

    iget v5, p0, Lcom/android/server/am/ServiceRecord$3;->val$appPid:I

    iget v7, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v8, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    const/4 v6, 0x0

    move-object v3, v2

    invoke-interface/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerInternal;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Error canceling notification for service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->-$$Nest$msignalForegroundServiceNotification(ILcom/android/server/am/ServiceRecord;Ljava/lang/String;Z)V

    return-void
.end method
