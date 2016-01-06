.class public final Lcom/ryg/utils/SoLibManager;
.super Ljava/lang/Object;
.source "SoLibManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ryg/utils/SoLibManager$CopySoTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/ryg/utils/SoLibManager;

.field private static sNativeLibDir:Ljava/lang/String;


# instance fields
.field private mSoExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/ryg/utils/SoLibManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/ryg/utils/SoLibManager;

    invoke-direct {v0}, Lcom/ryg/utils/SoLibManager;-><init>()V

    sput-object v0, Lcom/ryg/utils/SoLibManager;->sInstance:Lcom/ryg/utils/SoLibManager;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/ryg/utils/SoLibManager;->sNativeLibDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/utils/SoLibManager;->mSoExecutor:Ljava/util/concurrent/ExecutorService;

    .line 63
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/ryg/utils/SoLibManager;->sNativeLibDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCpuArch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cpuName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 98
    const-string v0, "armeabi"

    .line 99
    .local v0, "cpuArchitect":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string v0, "armeabi"

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    const-string v0, "x86"

    .line 103
    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mips"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v0, "mips"

    goto :goto_0
.end method

.method private getCpuName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 79
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 81
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 83
    const-string v5, ":\\s+"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "array":[Ljava/lang/String;
    array-length v5, v0

    if-lt v5, v7, :cond_0

    .line 85
    const/4 v5, 0x1

    aget-object v5, v0, v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "text":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 93
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 89
    :catch_1
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSoLoader()Lcom/ryg/utils/SoLibManager;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/ryg/utils/SoLibManager;->sInstance:Lcom/ryg/utils/SoLibManager;

    return-object v0
.end method


# virtual methods
.method public copyPluginSoLib(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "nativeLibDir"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/ryg/utils/SoLibManager;->getCpuName()Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, "cpuName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/ryg/utils/SoLibManager;->getCpuArch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "cpuArchitect":Ljava/lang/String;
    sput-object p3, Lcom/ryg/utils/SoLibManager;->sNativeLibDir:Ljava/lang/String;

    .line 123
    sget-object v3, Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpuArchitect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 126
    .local v16, "start":J
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 127
    .local v6, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v14

    .line 128
    .local v14, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 148
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v14    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 149
    .local v12, "end":J
    sget-object v3, Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "### copy so time : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v18, v12, v16

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 129
    .end local v12    # "end":J
    .restart local v6    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v14    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :try_start_1
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 130
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 134
    .local v15, "zipEntryName":Ljava/lang/String;
    const-string v3, ".so"

    invoke-virtual {v15, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v8

    .line 136
    .local v8, "lastModify":J
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/ryg/utils/DLConfigs;->getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v8, v4

    if-nez v3, :cond_2

    .line 138
    sget-object v3, Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "skip copying, the so lib is exist and not change: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 144
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v8    # "lastModify":J
    .end local v14    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v15    # "zipEntryName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 145
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 141
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v6    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "lastModify":J
    .restart local v14    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v15    # "zipEntryName":Ljava/lang/String;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ryg/utils/SoLibManager;->mSoExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v18, v0

    new-instance v3, Lcom/ryg/utils/SoLibManager$CopySoTask;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/ryg/utils/SoLibManager$CopySoTask;-><init>(Lcom/ryg/utils/SoLibManager;Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;J)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
