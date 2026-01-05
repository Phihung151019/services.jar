.class public Lcom/android/server/notification/BadgeExtractor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0

    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 8

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    check-cast v0, Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_4

    iget-object v4, v0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "notification_badging"

    invoke-static {v6, v7, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    invoke-virtual {v4, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_4
    iget-object v0, v0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    check-cast v2, Lcom/android/server/notification/PreferencesHelper;

    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {v2, v6, v4}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-boolean v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_5
    move v2, v3

    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_9

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move v3, v5

    :goto_3
    iput-boolean v3, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    goto :goto_5

    :cond_8
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    goto :goto_5

    :cond_9
    :goto_4
    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    :goto_5
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    :cond_a
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    :cond_b
    iget-object p0, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    check-cast p0, Lcom/android/server/notification/PreferencesHelper;

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    if-eqz p0, :cond_c

    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result p0

    if-eqz p0, :cond_c

    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    :cond_c
    :goto_6
    return-object v1

    :goto_7
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    return-void
.end method
