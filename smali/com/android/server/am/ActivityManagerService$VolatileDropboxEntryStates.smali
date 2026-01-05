.class public final Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIsProcessFrozen:Ljava/lang/Boolean;

.field public final mTimestamp:Ljava/time/ZonedDateTime;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/time/ZonedDateTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;->mIsProcessFrozen:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;->mTimestamp:Ljava/time/ZonedDateTime;

    return-void
.end method
