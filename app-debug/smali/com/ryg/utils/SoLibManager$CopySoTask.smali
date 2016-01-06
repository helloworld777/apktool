.class Lcom/ryg/utils/SoLibManager$CopySoTask;
.super Ljava/lang/Object;
.source "SoLibManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ryg/utils/SoLibManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopySoTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastModityTime:J

.field private mSoFileName:Ljava/lang/String;

.field private mZipEntry:Ljava/util/zip/ZipEntry;

.field private mZipFile:Ljava/util/zip/ZipFile;

.field final synthetic this$0:Lcom/ryg/utils/SoLibManager;


# direct methods
.method constructor <init>(Lcom/ryg/utils/SoLibManager;Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;J)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p4, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p5, "lastModify"    # J

    .prologue
    .line 163
    iput-object p1, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->this$0:Lcom/ryg/utils/SoLibManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p3, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mZipFile:Ljava/util/zip/ZipFile;

    .line 165
    iput-object p2, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mContext:Landroid/content/Context;

    .line 166
    iput-object p4, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mZipEntry:Ljava/util/zip/ZipEntry;

    .line 167
    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ryg/utils/SoLibManager$CopySoTask;->parseSoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mSoFileName:Ljava/lang/String;

    .line 168
    iput-wide p5, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mLastModityTime:J

    .line 169
    return-void
.end method

.method private getAvailableSize(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 243
    const/4 v0, 0x0

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 245
    .local v0, "available":I
    if-gtz v0, :cond_0

    const/16 v0, 0x400

    goto :goto_0
.end method

.method private final parseSoFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "zipEntryName"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeSoFile2LibDir()V
    .locals 7

    .prologue
    .line 176
    const/4 v3, 0x0

    .line 177
    .local v3, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 179
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v5, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 180
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    # getter for: Lcom/ryg/utils/SoLibManager;->sNativeLibDir:Ljava/lang/String;
    invoke-static {}, Lcom/ryg/utils/SoLibManager;->access$0()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mSoFileName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 184
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/ryg/utils/SoLibManager$CopySoTask;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 186
    :try_start_1
    iget-object v4, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :goto_1
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 188
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 199
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 202
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 203
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 205
    .local v2, "buf":[B
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ryg/utils/SoLibManager$CopySoTask;->getAvailableSize(Ljava/io/InputStream;)I

    move-result v5

    new-array v2, v5, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    :goto_1
    const/4 v4, 0x0

    .line 211
    .local v4, "i":I
    :goto_2
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 218
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 219
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 220
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v3

    .line 222
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "i":I
    :catch_1
    move-exception v3

    .line 207
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    :cond_2
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v1, v2, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 214
    :catch_2
    move-exception v3

    .line 215
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public run()V
    .locals 4

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/ryg/utils/SoLibManager$CopySoTask;->writeSoFile2LibDir()V

    .line 251
    iget-object v0, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mLastModityTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/ryg/utils/DLConfigs;->setSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 252
    # getter for: Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ryg/utils/SoLibManager;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copy so lib success: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ryg/utils/SoLibManager$CopySoTask;->mZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method
