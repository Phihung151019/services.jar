.class public final Lcom/android/server/job/JobNotificationCoordinator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCurrentAssociations:Landroid/util/ArrayMap;

.field public final mNotificationDetails:Landroid/util/ArrayMap;

.field public final mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field public final mUijLock:Ljava/lang/Object;

.field public final mUijNotificationChannels:Landroid/util/SparseArrayMap;

.field public final mUijNotifications:Landroid/util/SparseArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    return-void
.end method


# virtual methods
.method public final enqueueNotification(Lcom/android/server/job/JobServiceContext;Ljava/lang/String;IIILandroid/app/Notification;I)V
    .locals 9

    move/from16 v6, p7

    if-eqz p6, :cond_e

    invoke-virtual {p6}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {p6}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, p4, v1}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    if-ne v6, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "invalid job end notification policy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v0, :cond_2

    const-string p0, "JobNotificationCoordinator"

    const-string/jumbo p1, "enqueueNotification called with no running job"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_initial_set_notification_call_required"

    iget v2, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v1, v2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_initial_set_notification_call_optional"

    iget v2, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v1, v2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    iget-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_subsequent_set_notification_call_required"

    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v2, v5}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_subsequent_set_notification_call_optional"

    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v2, v5}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :goto_1
    iget v1, v1, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    if-eq v1, p5, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/job/JobNotificationCoordinator;->removeNotificationAssociation(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_set_notification_changed_notification_ids"

    iget v2, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v1, v2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_6
    :goto_2
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v0, :cond_a

    iget v0, p6, Landroid/app/Notification;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p6, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {v0, v8, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v8, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    invoke-virtual {v0, p5}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_9

    invoke-virtual {v0, p5}, Landroid/util/IntArray;->add(I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {p6}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_5

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_a
    :goto_5
    invoke-static {v8, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v1

    new-instance v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    invoke-virtual {p6}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;-><init>(Landroid/content/pm/UserPackage;IIILjava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseSetArray;

    if-nez v2, :cond_b

    new-instance v2, Landroid/util/SparseSetArray;

    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    iget-object v3, p0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v2, p5, p1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    const/4 v5, 0x0

    move-object v2, p2

    move-object v1, p2

    move v4, p3

    move v3, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "invalid notification channel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "small icon required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "notification"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isNotificationUsedForAnyUij(IILjava/lang/String;)Z
    .locals 1

    invoke-static {p1, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseSetArray;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object p0

    if-nez p0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_3

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobServiceContext;

    iget-object v0, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v0, :cond_2

    return p3

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public final removeNotificationAssociation(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseSetArray;

    if-eqz v1, :cond_d

    iget v2, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_a

    :cond_1
    iget p2, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    iget-object p2, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    iget-object v3, p2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    invoke-virtual {v1, v8}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v9, v8, v3}, Lcom/android/server/job/JobNotificationCoordinator;->isNotificationUsedForAnyUij(IILjava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_2

    :cond_3
    :goto_0
    iget p2, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->jobEndNotificationPolicy:I

    if-eq p2, v1, :cond_5

    const/16 p2, 0xb

    if-eq p1, p2, :cond_5

    const/16 p2, 0xd

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    iget v5, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    iget v6, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appPid:I

    const/4 v7, 0x0

    move-object v4, v3

    invoke-interface/range {v2 .. v9}, Lcom/android/server/notification/NotificationManagerInternal;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-interface {p1, v3, v8, v9}, Lcom/android/server/notification/NotificationManagerInternal;->removeUserInitiatedJobFlagFromNotification(Ljava/lang/String;II)V

    :cond_6
    if-eqz p3, :cond_c

    iget-boolean p1, p3, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0, v9, v8, v3}, Lcom/android/server/job/JobNotificationCoordinator;->isNotificationUsedForAnyUij(IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    invoke-virtual {p2, v9, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/IntArray;

    if-eqz p2, :cond_8

    invoke-virtual {p2, v8}, Landroid/util/IntArray;->indexOf(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/IntArray;->remove(I)V

    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    invoke-virtual {p2, v9, v3}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :cond_8
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    iget-object p1, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationChannel:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_5
    if-ltz p2, :cond_a

    iget-object p3, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/JobServiceContext;

    iget-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    if-eqz v0, :cond_9

    iget v1, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, v9, :cond_9

    iget-object v1, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationChannel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p3, p3, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz p3, :cond_9

    iget-boolean p3, p3, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz p3, :cond_9

    goto :goto_9

    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_a
    iget-object p2, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object p3, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    invoke-virtual {p3, v9, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArraySet;

    if-eqz p3, :cond_b

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, v9, v3}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_b
    :goto_6
    monitor-exit p2

    return-void

    :goto_7
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_8
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_c
    :goto_9
    return-void

    :cond_d
    :goto_a
    const-string p0, "JobNotificationCoordinator"

    const-string p1, "Association data structures not in sync"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
