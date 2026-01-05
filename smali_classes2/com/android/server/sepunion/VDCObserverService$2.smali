.class public final Lcom/android/server/sepunion/VDCObserverService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/VDCObserverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$2;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$2;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    iget-object p1, p1, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Lcom/android/server/sepunion/VDCObserverService$MyHandler;

    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/sepunion/VDCObserverService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/VDCObserverService$2;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
