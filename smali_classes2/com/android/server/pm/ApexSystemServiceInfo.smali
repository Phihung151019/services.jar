.class public final Lcom/android/server/pm/ApexSystemServiceInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mInitOrder:I

.field public final mJarPath:Ljava/lang/String;

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mJarPath:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mInitOrder:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/server/pm/ApexSystemServiceInfo;

    iget v0, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mInitOrder:I

    iget v1, p1, Lcom/android/server/pm/ApexSystemServiceInfo;->mInitOrder:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    neg-int p0, p0

    return p0
.end method
