.class public final Lcom/android/server/pm/ApexManager$ScanResult;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final apexInfo:Landroid/apex/ApexInfo;

.field public final packageName:Ljava/lang/String;

.field public final pkg:Lcom/android/server/pm/pkg/AndroidPackage;


# direct methods
.method public constructor <init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ApexManager$ScanResult;->apexInfo:Landroid/apex/ApexInfo;

    iput-object p2, p0, Lcom/android/server/pm/ApexManager$ScanResult;->pkg:Lcom/android/server/pm/pkg/AndroidPackage;

    iput-object p3, p0, Lcom/android/server/pm/ApexManager$ScanResult;->packageName:Ljava/lang/String;

    return-void
.end method
