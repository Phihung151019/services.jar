.class public final Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final customDimensionMap:Ljava/util/HashMap;

.field public final eventName:Ljava/lang/String;

.field public eventValue:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->eventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->eventValue:Ljava/lang/Long;

    iput-object p3, p0, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->customDimensionMap:Ljava/util/HashMap;

    return-void
.end method
