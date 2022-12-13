[
  .menuSchedules[].menuBlocks[]
    | select(.blockName == "Lunch")
    | {(.scheduledDate | split("T") | first): {entrees: .cafeteriaLineList.data[0].foodItemList.data | map(select(.item_Type == "ENTREES") | .item_Name)}}
]
