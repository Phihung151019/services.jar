.class public final Lcom/android/server/sepunion/SocialComposerObserverService$3;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SocialComposerObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SocialComposerObserverService;Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService$3;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService$3;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    iget-object p1, p1, Lcom/android/server/sepunion/SocialComposerObserverService;->mHandler:Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/sepunion/SocialComposerObserverService$3;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    iget-object p0, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mHandler:Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
