.class public final Lcom/android/server/ExtendedEthernetServiceImpl$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/EthernetManager$TetheredInterfaceCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$1;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    return-void
.end method


# virtual methods
.method public final onAvailable(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "TetheredInterfaceCallback onAvailable: "

    const-string v1, "ExtendedEthernetServiceImpl"

    invoke-static {v0, p1, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$1;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    iget-object p1, p1, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ETHERNET_TETHERING_MODE"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/server/ExtendedEthernetServiceImpl$1$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/TetheringManager$TetheringRequest$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/net/TetheringManager$TetheringRequest$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;->build()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$1;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mTetheringManager:Landroid/net/TetheringManager;

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, p1}, Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    return-void
.end method

.method public final onUnavailable()V
    .locals 1

    const-string p0, "ExtendedEthernetServiceImpl"

    const-string/jumbo v0, "TetheredInterfaceCallback onUnavailable"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
