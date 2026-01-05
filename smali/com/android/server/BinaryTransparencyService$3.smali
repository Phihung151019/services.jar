.class public final Lcom/android/server/BinaryTransparencyService$3;
.super Landroid/content/pm/IStagedApexObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$3;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-direct {p0}, Landroid/content/pm/IStagedApexObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApexStaged(Landroid/content/pm/ApexStagedEvent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A new APEX has been staged for update. There are currently "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApexStagedEvent;->stagedApexInfos:[Landroid/content/pm/StagedApexInfo;

    array-length p1, p1

    const-string v1, " APEX(s) staged for update. Scheduling measurement..."

    const-string/jumbo v2, "TransparencyService"

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$3;->this$0:Lcom/android/server/BinaryTransparencyService;

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;)V

    return-void
.end method
