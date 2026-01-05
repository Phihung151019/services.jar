.class public final Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPkgName:Ljava/lang/String;

.field public final mPpi:Lcom/android/server/policy/PermissionPolicyService$Internal;

.field public final mTaskId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/android/server/policy/PermissionPolicyService$Internal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPpi:Lcom/android/server/policy/PermissionPolicyService$Internal;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    iget v2, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    iget p1, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPpi:Lcom/android/server/policy/PermissionPolicyService$Internal;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/policy/PermissionPolicyService$Internal;->showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    return-void
.end method
