.class public abstract Lcom/android/server/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static filterByLanguage(Ljava/util/List;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/LocaleList;->size()I

    move-result v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-array v3, v1, [B

    new-array v4, v1, [Landroid/icu/util/ULocale;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_15

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_2

    move-object/from16 v12, p1

    goto/16 :goto_9

    :cond_2
    move v10, v6

    const/4 v11, 0x1

    :goto_2
    if-ge v10, v1, :cond_e

    move-object/from16 v12, p1

    invoke-virtual {v12, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    aput-byte v6, v3, v10

    goto/16 :goto_6

    :cond_3
    aget-object v14, v4, v10

    if-nez v14, :cond_4

    invoke-static {v13}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v13

    invoke-static {v13}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v13

    aput-object v13, v4, v10

    :cond_4
    aget-object v13, v4, v10

    invoke-static {v8}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x4

    if-eqz v15, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {v14}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v15

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_b

    invoke-virtual {v15}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v15}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v14}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v15}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v15}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    const/16 v16, 0x3

    goto :goto_5

    :cond_a
    :goto_3
    const/16 v16, 0x2

    goto :goto_5

    :cond_b
    :goto_4
    const/16 v16, 0x1

    :cond_c
    :goto_5
    aput-byte v16, v3, v10

    if-eqz v11, :cond_d

    if-eqz v16, :cond_d

    const/4 v11, 0x0

    :cond_d
    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_e
    move-object/from16 v12, p1

    if-eqz v11, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    if-nez v8, :cond_10

    new-instance v8, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    invoke-direct {v8, v7, v3}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;-><init>(I[B)V

    invoke-virtual {v2, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_10
    iget-object v6, v8, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    const/4 v9, 0x0

    :goto_7
    array-length v10, v6

    if-ge v9, v10, :cond_14

    aget-byte v10, v6, v9

    aget-byte v11, v3, v9

    if-le v10, v11, :cond_11

    goto :goto_9

    :cond_11
    if-ge v10, v11, :cond_13

    const/4 v6, 0x0

    :goto_8
    iget-object v9, v8, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    array-length v10, v9

    if-ge v6, v10, :cond_12

    aget-byte v10, v3, v6

    aput-byte v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_12
    iput v7, v8, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    goto :goto_9

    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_14
    :goto_9
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v3, v1, [Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v1, :cond_16

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_16
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v1, :cond_17

    aget-object v2, v3, v6

    iget v2, v2, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_17
    :goto_c
    return-void
.end method

.method public static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
