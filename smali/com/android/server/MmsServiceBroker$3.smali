.class public final Lcom/android/server/MmsServiceBroker$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/telephony/IMms;


# instance fields
.field public final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$3;->this$0:Lcom/android/server/MmsServiceBroker;

    return-void
.end method


# virtual methods
.method public final addMultimediaMessageDraft(ILjava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final archiveStoredConversation(Ljava/lang/String;JZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final deleteStoredConversation(Ljava/lang/String;J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final downloadMessage(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p7}, Lcom/android/server/MmsServiceBroker$3;->returnPendingIntentWithError(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final getAutoPersisting()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final importMultimediaMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final returnPendingIntentWithError(Landroid/app/PendingIntent;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$3;->this$0:Lcom/android/server/MmsServiceBroker;

    iget-object p0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "MmsServiceBroker"

    const-string v0, "Failed to return pending intent result"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final sendMessage(IILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p7}, Lcom/android/server/MmsServiceBroker$3;->returnPendingIntentWithError(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-virtual {p0, p5}, Lcom/android/server/MmsServiceBroker$3;->returnPendingIntentWithError(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final setAutoPersisting(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public final updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
