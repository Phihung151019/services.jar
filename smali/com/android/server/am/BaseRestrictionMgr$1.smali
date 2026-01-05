.class Lcom/android/server/am/BaseRestrictionMgr$1;
.super Ljava/util/ArrayList;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BaseRestrictionMgr;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseRestrictionMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BaseRestrictionMgr$1;->this$0:Lcom/android/server/am/BaseRestrictionMgr;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const p1, 0x1030010

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
