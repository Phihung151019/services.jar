.class public interface abstract Lcom/android/server/notification/NotificationSignalExtractor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
.end method

.method public abstract process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
.end method

.method public setCompatChangeLogger(Lcom/android/internal/compat/IPlatformCompat;)V
    .locals 0

    return-void
.end method

.method public abstract setConfig(Lcom/android/server/notification/RankingConfig;)V
.end method

.method public setGroupHelper(Lcom/android/server/notification/GroupHelper;)V
    .locals 0

    return-void
.end method

.method public abstract setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
.end method
