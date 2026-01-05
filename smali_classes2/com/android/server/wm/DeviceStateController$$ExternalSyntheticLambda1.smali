.class public final synthetic Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/util/Pair;

.field public final synthetic f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$0:Landroid/util/Pair;

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$0:Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
