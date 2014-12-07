;;
;;

(import [wmta.core [get-json]])


(defn station/prediction [line]
  (get-json "StationPrediction" (.format "GetPrediction/{}" line) {}))
