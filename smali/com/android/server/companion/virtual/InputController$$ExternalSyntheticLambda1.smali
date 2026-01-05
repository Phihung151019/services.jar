.class public final synthetic Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/companion/virtual/InputController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    iput p6, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v1, p0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputDpad(IILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v1, p0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputRotaryEncoder(IILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v1, p0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputMouse(IILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/InputController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$3:I

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v1, p0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputKeyboard(IILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
