.class final Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandle:I

.field public final mName:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    iput p2, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mType:I

    iput-object p3, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mName:Ljava/lang/String;

    return-void
.end method
