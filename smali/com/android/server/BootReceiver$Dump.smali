.class public final Lcom/android/server/BootReceiver$Dump;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final dumpInFix:Ljava/lang/String;

.field public final fileList:Ljava/util/List;

.field public final listMax:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/BootReceiver$Dump;->fileList:Ljava/util/List;

    iput p1, p0, Lcom/android/server/BootReceiver$Dump;->listMax:I

    iput-object p2, p0, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    return-void
.end method
