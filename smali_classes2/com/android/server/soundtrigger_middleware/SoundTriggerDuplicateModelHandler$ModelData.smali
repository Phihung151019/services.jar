.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mModelId:I

.field public final mUuid:Ljava/lang/String;

.field public mWasContended:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mWasContended:Z

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mModelId:I

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mUuid:Ljava/lang/String;

    return-void
.end method
