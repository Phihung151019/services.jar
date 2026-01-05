.class public final Lcom/android/server/rollback/LocalIntentReceiver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mConsumer:Ljava/util/function/Consumer;

.field public final mLocalSender:Lcom/android/server/rollback/LocalIntentReceiver$1;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/rollback/LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/LocalIntentReceiver$1;-><init>(Lcom/android/server/rollback/LocalIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mLocalSender:Lcom/android/server/rollback/LocalIntentReceiver$1;

    iput-object p1, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method
