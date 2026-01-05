.class public final synthetic Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
