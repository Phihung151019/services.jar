.class public final Lcom/android/server/display/DensityMapping$Entry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ZEROES:Lcom/android/server/display/DensityMapping$Entry;


# instance fields
.field public final density:I

.field public final squaredDiagonal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/display/DensityMapping$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/server/display/DensityMapping$Entry;-><init>(III)V

    sput-object v0, Lcom/android/server/display/DensityMapping$Entry;->ZEROES:Lcom/android/server/display/DensityMapping$Entry;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    iput p3, p0, Lcom/android/server/display/DensityMapping$Entry;->density:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DensityMappingEntry{squaredDiagonal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DensityMapping$Entry;->density:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
