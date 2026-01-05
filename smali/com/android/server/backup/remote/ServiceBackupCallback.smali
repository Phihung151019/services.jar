.class public final Lcom/android/server/backup/remote/ServiceBackupCallback;
.super Landroid/app/backup/IBackupCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBackupManager:Landroid/app/backup/IBackupManager;

.field public final mToken:I


# direct methods
.method public constructor <init>(Landroid/app/backup/IBackupManager;I)V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/IBackupCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mBackupManager:Landroid/app/backup/IBackupManager;

    iput p2, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mToken:I

    return-void
.end method


# virtual methods
.method public final operationComplete(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mBackupManager:Landroid/app/backup/IBackupManager;

    iget p0, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mToken:I

    invoke-interface {v0, p0, p1, p2}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V

    return-void
.end method
