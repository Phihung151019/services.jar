.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$3;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVrStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    iput-boolean p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return-void
.end method
