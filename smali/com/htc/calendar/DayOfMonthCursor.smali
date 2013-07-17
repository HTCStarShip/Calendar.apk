.class public Lcom/htc/calendar/DayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "DayOfMonthCursor.java"


# instance fields
.field private mColumn:I

.field private mRow:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "weekStartDay"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 54
    invoke-virtual {p0, p3}, Lcom/htc/calendar/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    .line 55
    invoke-virtual {p0, p3}, Lcom/htc/calendar/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    .line 56
    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 125
    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    .line 136
    :goto_0
    return v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/htc/calendar/DayOfMonthCursor;->nextMonth()V

    .line 132
    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    .line 133
    :goto_1
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    goto :goto_1

    .line 136
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedColumn()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/calendar/DayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_0
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    if-nez v0, :cond_1

    .line 85
    const/4 v0, -0x1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedRow()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    return v0
.end method

.method public isSelected(II)Z
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 96
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public left()Z
    .locals 3

    .prologue
    .line 145
    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    if-nez v1, :cond_0

    .line 146
    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    .line 147
    const/4 v1, 0x6

    iput v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    .line 152
    :goto_0
    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const/4 v1, 0x0

    .line 161
    :goto_1
    return v1

    .line 149
    :cond_0
    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/htc/calendar/DayOfMonthCursor;->previousMonth()V

    .line 158
    invoke-virtual {p0}, Lcom/htc/calendar/DayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 159
    .local v0, lastDay:I
    invoke-virtual {p0, v0}, Lcom/htc/calendar/DayOfMonthCursor;->getRowOf(I)I

    move-result v1

    iput v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    .line 160
    invoke-virtual {p0, v0}, Lcom/htc/calendar/DayOfMonthCursor;->getColumnOf(I)I

    move-result v1

    iput v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    .line 161
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public right()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 171
    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    .line 172
    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    .line 177
    :goto_0
    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :goto_1
    return v0

    .line 174
    :cond_0
    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/htc/calendar/DayOfMonthCursor;->nextMonth()V

    .line 183
    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    .line 184
    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    .line 185
    :goto_2
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    goto :goto_2

    .line 188
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 1
    .parameter "dayOfMonth"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/htc/calendar/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    .line 92
    invoke-virtual {p0, p1}, Lcom/htc/calendar/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    .line 93
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 0
    .parameter "row"
    .parameter "col"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    .line 69
    iput p2, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    .line 70
    return-void
.end method

.method public up()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    .line 108
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/htc/calendar/DayOfMonthCursor;->previousMonth()V

    .line 112
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    .line 113
    :goto_1
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/htc/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/calendar/DayOfMonthCursor;->mRow:I

    goto :goto_1

    .line 116
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
