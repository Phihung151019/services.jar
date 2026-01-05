.class public final Lcom/android/server/ExtendedEthernetServiceImpl$3;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$3;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$3;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    iget-object p1, p1, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "eth_disabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    const-string p1, "ETH_DISABLED is changed to "

    const-string v0, "ExtendedEthernetServiceImpl"

    invoke-static {p1, v0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$3;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/ExtendedEthernetServiceImpl;->setLinkDown()V

    return-void
.end method
