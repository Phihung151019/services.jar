.class public Lcom/android/server/enterprise/hdm/HdmVendorController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native hdm_apply_policy([B[B[B[B[BZ)[B
.end method

.method public static native hdm_delete_keys()I
.end method

.method public static native hdm_generate_nonce(Z)[B
.end method

.method public static native hdm_get_id([B[BZ)[B
.end method

.method public static native hdm_get_key()I
.end method

.method public static native hdm_get_policy(Z[B[B)[B
.end method

.method public static native hdm_get_revocation_info(Z)[B
.end method

.method public static native hdm_kg_cmd(I)I
.end method

.method public static native hdm_load()I
.end method

.method public static native hdm_remove_revocation_info()I
.end method

.method public static native hdm_set_key([B)I
.end method

.method public static native hdm_sync_revocation_info(Z[B)[B
.end method

.method public static native hdm_unload()I
.end method
