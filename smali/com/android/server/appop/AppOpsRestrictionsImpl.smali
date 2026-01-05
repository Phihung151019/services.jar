.class public final Lcom/android/server/appop/AppOpsRestrictionsImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/appop/AppOpsRestrictions;


# instance fields
.field public final mAppOpsRestrictionRemovedListener:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;

.field public final mContext:Landroid/content/Context;

.field public final mGlobalRestrictions:Landroid/util/ArrayMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

.field public final mUserRestrictions:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mAppOpsRestrictionRemovedListener:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;

    return-void
.end method


# virtual methods
.method public final clearUserRestrictions(Ljava/lang/Object;)Z
    .locals 10

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    invoke-virtual {v6, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    iget-object v4, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    or-int p1, v1, v2

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    :goto_5
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    new-instance v4, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsRestrictionsImpl;I)V

    iget-object v2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    :cond_6
    return p1
.end method

.method public final dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    const-string/jumbo v8, "]"

    const-string v9, ", "

    const-string/jumbo v10, "["

    const-string v11, ":"

    if-ge v6, v4, :cond_2

    iget-object v12, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseBooleanArray;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "  Global restrictions for token "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-le v14, v7, :cond_0

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v13, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "      Restricted ops: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_14

    iget-object v12, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    iget-object v14, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v15

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    const-string/jumbo v5, "user: "

    if-lez v15, :cond_b

    if-nez v2, :cond_b

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_4
    if-ge v7, v15, :cond_a

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v4

    move-object/from16 v4, v19

    check-cast v4, Landroid/util/SparseBooleanArray;

    if-nez v4, :cond_4

    goto :goto_5

    :cond_4
    if-ltz v3, :cond_5

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    if-nez v19, :cond_5

    :goto_5
    move/from16 v19, v6

    move/from16 v21, v7

    const/4 v6, 0x1

    goto :goto_8

    :cond_5
    if-nez v17, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    move/from16 v19, v6

    const-string v6, "  User restrictions for token "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    move/from16 v19, v6

    :goto_6
    if-nez v18, :cond_7

    const-string v3, "      Restricted ops:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v18, 0x1

    :cond_7
    invoke-static {v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move/from16 v21, v7

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_9

    invoke-virtual {v4, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v22

    move-object/from16 v23, v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move/from16 v24, v6

    const/4 v6, 0x1

    if-le v4, v6, :cond_8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-static/range {v22 .. v22}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v23

    move/from16 v6, v24

    goto :goto_7

    :cond_9
    const/4 v6, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "        "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " restricted ops: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_8
    add-int/lit8 v7, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v6, v19

    move/from16 v4, v20

    goto/16 :goto_4

    :cond_a
    move/from16 v20, v4

    move/from16 v19, v6

    const/4 v6, 0x1

    goto :goto_9

    :cond_b
    move/from16 v20, v4

    move/from16 v19, v6

    move v6, v7

    const/16 v17, 0x0

    :goto_9
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    :goto_a
    if-lez v0, :cond_13

    if-gez p3, :cond_13

    new-instance v3, Landroid/util/IndentingPrintWriter;

    invoke-direct {v3, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_b
    if-ge v4, v0, :cond_12

    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PackageTagsList;

    if-nez v15, :cond_d

    goto :goto_d

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v15, v2}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result v16

    goto :goto_c

    :cond_e
    move/from16 v16, v6

    :goto_c
    if-nez v16, :cond_f

    :goto_d
    move/from16 v18, v0

    goto :goto_f

    :cond_f
    if-nez v17, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v18, v0

    const-string/jumbo v0, "User restrictions for token "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/16 v17, 0x1

    goto :goto_e

    :cond_10
    move/from16 v18, v0

    :goto_e
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-nez v7, :cond_11

    const-string v0, "Excluded packages:"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    :cond_11
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " packages: "

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v15, v3}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_f
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v18

    const/4 v6, 0x1

    goto :goto_b

    :cond_12
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_13
    add-int/lit8 v6, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v4, v20

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_14
    return-void
.end method
