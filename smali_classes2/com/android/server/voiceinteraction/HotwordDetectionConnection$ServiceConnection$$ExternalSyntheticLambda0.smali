.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    check-cast p1, Lcom/android/server/voiceinteraction/DetectorSession;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->$r8$lambda$E52jDMeAIM1fqsgeezf_xP2TouE(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Lcom/android/server/voiceinteraction/DetectorSession;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->$r8$lambda$soeRIWrLUaITqTFZZ9ww9BHBGAM(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Lcom/android/server/voiceinteraction/DetectorSession;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
