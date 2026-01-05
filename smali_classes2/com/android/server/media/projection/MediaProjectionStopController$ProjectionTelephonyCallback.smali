.class public final Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionStopController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionStopController;->callStateChanged()V

    return-void
.end method
