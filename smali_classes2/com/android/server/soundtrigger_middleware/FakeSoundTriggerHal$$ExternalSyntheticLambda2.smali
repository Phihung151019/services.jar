.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;->$r8$classId:I

    check-cast p1, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void

    :pswitch_0
    invoke-interface {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void

    :pswitch_1
    invoke-interface {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void

    :pswitch_2
    invoke-interface {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
