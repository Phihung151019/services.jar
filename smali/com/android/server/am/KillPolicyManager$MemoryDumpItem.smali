.class public final Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDumpSize:J

.field public final mMemoryType:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;


# direct methods
.method public constructor <init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mMemoryType:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    return-void
.end method
