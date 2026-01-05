.class public final Lcom/android/server/rollback/LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/rollback/LocalIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/rollback/LocalIntentReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/rollback/LocalIntentReceiver$1;->this$0:Lcom/android/server/rollback/LocalIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/rollback/LocalIntentReceiver$1;->this$0:Lcom/android/server/rollback/LocalIntentReceiver;

    iget-object p0, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
