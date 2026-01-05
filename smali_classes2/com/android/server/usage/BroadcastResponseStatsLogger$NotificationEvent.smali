.class public final Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;


# instance fields
.field public packageName:Ljava/lang/String;

.field public timestampMs:J

.field public type:I

.field public userId:I


# virtual methods
.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->type:I

    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->userId:I

    iget-wide v3, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->timestampMs:J

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getNotificationEventLog(IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
