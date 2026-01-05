.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    iget-boolean p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mRinging:Z

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mRinging:Z

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
